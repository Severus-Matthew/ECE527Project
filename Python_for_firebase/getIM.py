import firebase_admin
from firebase_admin import credentials, storage

# Replace 'path/to/your/credentials.json' with the path to your Firebase service account key JSON file
cred = credentials.Certificate('C:\\Users\\drpro\\Downloads\\ece527-firebase-adminsdk-kucra-fa999a0ae8.json')
firebase_admin.initialize_app(cred, {'storageBucket': 'ece527.appspot.com'})

def upload_image(local_path, remote_path):
    # Create a storage client
    bucket = storage.bucket()

    # Specify the path to the file in Firebase Storage
    blob = bucket.blob(remote_path)

    # Upload the local image file to Firebase Storage
    blob.upload_from_filename(local_path)
    print(f"Image uploaded successfully to {remote_path}")

def download_image(remote_path, local_path):
    # Create a storage client
    bucket = storage.bucket()

    # Specify the path to the file in Firebase Storage
    blob = bucket.blob(remote_path)

    # Download the image to the specified local path
    blob.download_to_filename(local_path)
    print(f"Image downloaded successfully to {local_path}")

if __name__ == "__main__":
    # Replace 'path/to/your/image.jpg' with the desired local path and 'images/image.jpg' with the path in Firebase Storage
    download_image('test.jpg', 'test.jpg')
