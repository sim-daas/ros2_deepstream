import cv2
import mediapipe as mp
from mediapipe.tasks import python
from mediapipe.tasks.python import vision

# Define the path to the hand landmarker model
model_path = "hand_landmarker.task"

# Initialize MediaPipe classes
BaseOptions = mp.tasks.BaseOptions
HandLandmarker = mp.tasks.vision.HandLandmarker
HandLandmarkerOptions = mp.tasks.vision.HandLandmarkerOptions
VisionRunningMode = mp.tasks.vision.RunningMode

# Function to draw landmarks and connections on the image
def draw_landmarks_on_image(image, hand_landmarks):
    # Define colors for each finger
    colors = {
        "thumb": (255, 0, 0),       # Blue
        "index": (0, 255, 0),       # Green
        "middle": (0, 0, 255),      # Red
        "ring": (255, 255, 0),      # Cyan
        "pinky": (255, 0, 255)      # Magenta
    }

    # Define finger connections
    connections = [
        (0, 1), (1, 2), (2, 3), (3, 4),   # Thumb
        (0, 5), (5, 6), (6, 7), (7, 8),   # Index
        (0, 9), (9, 10), (10, 11), (11, 12),  # Middle
        (0, 13), (13, 14), (14, 15), (15, 16),  # Ring
        (0, 17), (17, 18), (18, 19), (19, 20)   # Pinky
    ]

    # Iterate through detected hands
    for hand in hand_landmarks:
        # Draw circles for landmarks
        for landmark in hand:
            x = int(landmark.x * image.shape[1])
            y = int(landmark.y * image.shape[0])
            cv2.circle(image, (x, y), 5, (0, 255, 0), -1)
        
        # Draw connections for each finger
        for start_idx, end_idx in connections:
            start_point = hand[start_idx]
            end_point = hand[end_idx]

            # Get pixel coordinates
            start_x = int(start_point.x * image.shape[1])
            start_y = int(start_point.y * image.shape[0])
            end_x = int(end_point.x * image.shape[1])
            end_y = int(end_point.y * image.shape[0])

            # Assign color based on finger
            if start_idx in range(1, 5):  # Thumb
                color = colors["thumb"]
            elif start_idx in range(5, 9):  # Index
                color = colors["index"]
            elif start_idx in range(9, 13):  # Middle
                color = colors["middle"]
            elif start_idx in range(13, 17):  # Ring
                color = colors["ring"]
            else:  # Pinky
                color = colors["pinky"]

            # Draw line
            cv2.line(image, (start_x, start_y), (end_x, end_y), color, 2)

# Create hand landmarker options
options = HandLandmarkerOptions(
    base_options=BaseOptions(model_asset_path=model_path),
    running_mode=VisionRunningMode.IMAGE
)

# Initialize the hand landmarker
with HandLandmarker.create_from_options(options) as landmarker:
    # Open the webcam
    cap = cv2.VideoCapture(0)
    
    while True:
        ret, frame = cap.read()
        if not ret:
            print("Failed to capture frame. Exiting...")
            break

        # Convert the frame to RGB
        frame_rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)

        # Create MediaPipe Image object
        mp_image = mp.Image(image_format=mp.ImageFormat.SRGB, data=frame_rgb)

        try:
            # Detect hand landmarks
            result = landmarker.detect(mp_image)

            # Draw landmarks and connections on the frame
            if result.hand_landmarks:
                draw_landmarks_on_image(frame, result.hand_landmarks)
        except Exception as e:
            print(f"Error during detection: {e}")

        # Display the frame
        cv2.imshow("Hand Landmarks", frame)

        # Exit on pressing 'q'
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    # Release resources
    cap.release()
    cv2.destroyAllWindows()