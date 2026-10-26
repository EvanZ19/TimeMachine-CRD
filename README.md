# Time Machine: Community Resilience & Development V1.12

Developer: Evan Zhang (greninjanintendo@gmail.com)

AI-Assisted Development: ChatGPT was used to assist with user interface implementation, debugging error analysis, and coding suggestions. The developer completed the following tasks:
Designed and optimized the user interface.
Coded the installation and function calls for SuperPoint, LightGlue, DINO, and Mapillary models, as well as integrations for the Google Maps Street View API, OpenAI API, and cloud server Render.
Tested different models for mobile suitability, performance, and robustness across various locations and scenes.
Finalized the SuperPoint and LightGlue-based matching pipeline along with the VLM model from the OpenAI API for the current version.


## You need to update the `local.properties` using your own KEY, URL, and TOKEN.
STREET_VIEW_API_KEY=YOUR_KEY_HERE
VLM_BACKEND_URL=YOUR_URL_HERE
VLM_ACCESS_TOKEN=YOUR_TOKEN_HERE

## You need to download and instll SuperPoint + LightGlue ONNX Runtime model, which is not included here.
On Windows, right-click **download_lightglue_model.ps1** and run with PowerShell: powershell -ExecutionPolicy Bypass -File .\download_lightglue_model.ps1

## How the App Works
1. Capture or Select a Photo: Users take a photo using the smartphone camera, allowing the app to obtain GPS coordinates and camera orientation information. Alternatively, users can select an existing photo from their gallery, provided it contains valid GPS information.
2. Retrieve Historical Imagery: The app retrieves a corresponding Google Street View image based on the photo's location and available camera orientation information.
3. Adjust the View: Users can manually adjust the historical image's heading, pitch, and zoom for better alignment.
4. Verify Image Correspondence: SuperPoint and LightGlue detect and match image features, while RANSAC verifies geometric consistency. Verified matches are displayed as connecting lines between the two images.
5. AI-Powered Change Analysis: Both images are sent to a cloud-based vision-language model (VLM) through the OpenAI API. The model generates natural-language descriptions of observed changes, such as new construction, vegetation growth, or infrastructure modifications.
6. Interactive Questions and Answers: Users can ask follow-up questions, such as "What infrastructure appears submerged?", "Has the utility pole become more tilted?", or "Are there any new buildings?" The AI analyzes both images and the conversation history to provide additional explanations.

