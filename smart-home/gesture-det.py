import cv2
import mediapipe as mp
from mediapipe.tasks import python
from mediapipe.tasks.python import vision

# Path to the Gesture Recognizer model
model_path = "gesture_recognizer.task"

# Initialize MediaPipe classes
BaseOptions = mp.tasks.BaseOptions
GestureRecognizer = mp.tasks.vision.GestureRecognizer
GestureRecognizerOptions = mp.tasks.vision.GestureRecognizerOptions
VisionRunningMode = mp.tasks.vision.RunningMode

# Function to display results on the frame
def display_results_on_image(image, gesture_recognition_result):
    if not gesture_recognition_result.gestures:
        return image

    # Get the gesture name and confidence score for the first detected hand
    gesture = gesture_recognition_result.gestures[0][0]
    gesture_name = gesture.category_name
    confidence = gesture.score

    # Add text to the frame
    cv2.putText(image, f"Gesture: {gesture_name} ({confidence:.2f})", (10, 50),
                cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
    return image

# Create gesture recognizer options
options = GestureRecognizerOptions(
    base_options=BaseOptions(model_asset_path=model_path),
    running_mode=VisionRunningMode.IMAGE,
)

# Initialize the Gesture Recognizer
with GestureRecognizer.create_from_options(options) as recognizer:
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
            # Perform gesture recognition
            gesture_recognition_result = recognizer.recognize(mp_image)

            # Display results on the frame
            frame = display_results_on_image(frame, gesture_recognition_result)
        except Exception as e:
            print(f"Error during gesture recognition: {e}")

        # Display the frame
        cv2.imshow("Gesture Recognition", frame)

        # Exit on pressing 'q'
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    # Release resources
    cap.release()
    cv2.destroyAllWindows()
