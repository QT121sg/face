��          �      l      �  +  �  E       S  �   Z  �     R   �  i   3    �    �  �  �
  �  �  o    V  �  �   �  �   �  Z   $          �     �     �  k  �  I    x   P    �  �  �  �  �!  �   `#  �   5$  �   %  �  �&  �  �,  �
  �1  f  �<  �  �@  0  �C    �D  �   F     �F     �F  
   G     G                                                           
                                	       Apply gaussian blur to the mask output. Has the effect of smoothing the edges of the mask giving less of a hard edge. the size is in pixels. This value should be odd, if an even number is passed in then it will be rounded to the next odd number. NB: Only effects the output preview. Set to 0 for off Directory containing extracted faces, source frames, or a video file. Full path to the alignments file that contains the masks if not at the default location. NB: If the input-type is faces and you wish to update the corresponding alignments file, then you must provide a value here as the location cannot be automatically detected. Helps reduce 'blotchiness' on some masks by making light shades white and dark shades black. Higher values will impact more of the mask. NB: Only effects the output preview. Set to 0 for off Import only. The size, in pixels to internally store the mask at.
The default is 128 which is fine for nearly all usecases. Larger sizes will result in larger alignments files and longer processing. Mask tool
Generate, import, export or preview masks for existing alignments files. Optional output location. If provided, a preview of the masks created will be output in the given folder. R|How to format the output when processing is set to 'output'.
L|combined: The image contains the face/frame, face mask and masked face.
L|masked: Output the face/frame as rgba image with the face masked.
L|mask: Only output the mask as a single channel image. R|Import only. The centering to use when importing masks. Note: For any job other than 'import' this option is ignored as mask centering is handled internally.
L|face: Centers the mask on the center of the face, adjusting for pitch and yaw. Outside of requirements for full head masking/training, this is likely to be the best choice.
L|head: Centers the mask on the center of the head, adjusting for pitch and yaw. Note: You should only select head centering if you intend to include the full head (including hair) within the mask and are looking to train a full head model.
L|legacy: The 'original' extraction technique. Centers the mask near the  of the nose with and crops closely to the face. Can result in the edges of the mask appearing outside of the training area. R|Import only. The path to the folder that contains masks to be imported.
L|How the masks are provided is not important, but they will be stored, internally, as 8-bit grayscale images.
L|If the input are images, then the masks must be named exactly the same as input frames/faces (excluding the file extension).
L|If the input is a video file, then the filename of the masks is not important but should contain the frame number at the end of the filename (but before the file extension). The frame number can be separated from the rest of the filename by any non-numeric character and can be padded by any number of zeros. The frame number must correspond correctly to the frame number in the original video (starting from frame 1). R|Masker to use.
L|bisenet-fp: Relatively lightweight NN based mask that provides more refined control over the area to be masked including full head masking (configurable in mask settings).
L|components: Mask designed to provide facial segmentation based on the positioning of landmark locations. A convex hull is constructed around the exterior of the landmarks to create a mask.
L|custom: A dummy mask that fills the mask area with all 1s or 0s (configurable in settings). This is only required if you intend to manually edit the custom masks yourself in the manual tool. This mask does not use the GPU.
L|extended: Mask designed to provide facial segmentation based on the positioning of landmark locations. A convex hull is constructed around the exterior of the landmarks and the mask is extended upwards onto the forehead.
L|vgg-clear: Mask designed to provide smart segmentation of mostly frontal faces clear of obstructions. Profile faces and obstructions may result in sub-par performance.
L|vgg-obstructed: Mask designed to provide smart segmentation of mostly frontal faces. The mask model has been specifically trained to recognize some facial obstructions (hands and eyeglasses). Profile faces may result in sub-par performance.
L|unet-dfl: Mask designed to provide smart segmentation of mostly frontal faces. The mask model has been trained by community members. Profile faces may result in sub-par performance. R|Run the mask tool on multiple sources. If selected then the other options should be set as follows:
L|input: A parent folder containing either all of the video files to be processed, or containing sub-folders of frames/faces.
L|output-folder: If provided, then sub-folders will be created within the given location to hold the previews for each input.
L|alignments: Alignments field will be ignored for batch processing. The alignments files must exist at the default location (for frames). For batch processing of masks with 'faces' as the input type, then only the PNG header within the extracted faces will be updated. R|The Mask tool process to perform.
L|all: Update the mask for all faces in the alignments file for the selected 'masker'.
L|missing: Create a mask for all faces in the alignments file where a mask does not previously exist for the selected 'masker'.
L|output: Don't update the masks, just output the selected 'masker' for review/editing in external tools to the given output folder.
L|import: Import masks that have been edited outside of faceswap into the alignments file. Note: 'custom' must be the selected 'masker' and the masks must be in the same format as the 'input-type' (frames or faces) R|Whether the `input` is a folder of faces or a folder frames/video
L|faces: The input is a folder containing extracted faces.
L|frames: The input is a folder containing frames or is a video R|Whether to output the whole frame or only the face box when using output processing. Only has an effect when using frames as input. This tool allows you to generate, import, export or preview masks for existing alignments. data import output process Project-Id-Version: 
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2024-03-11 23:50+0000
Last-Translator: 
Language-Team: 
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<12 || n%100>14) ? 1 : 2);
X-Generator: Poedit 3.4.2
 Применяет гауссово размытие к выходу маски. Сглаживает края маски, делая их менее жесткими. размер в пикселях. Это значение должно быть нечетным, если передано четное число, то оно будет округлено до следующего нечетного числа. Примечание: влияет только на предварительный просмотр. Установите значение 0 для выключения Папка, содержащая извлеченные лица, исходные кадры или видеофайл. Полный путь к файлу выравниваний для добавления маски, если он не находится в месте по умолчанию. Примечание: Если input-type - лица, и вы хотите обновить соответствующий файл выравнивания, то вы должны указать значение здесь, так как местоположение не может быть определено автоматически. Помогает уменьшить "пятнистость" на некоторых масках, делая светлые оттенки белыми, а темные - черными. Более высокие значения влияют на большую часть маски. Примечание: влияет только на предварительный просмотр. Установите значение 0 для выключения Только импорт. Размер в пикселях для внутреннего хранения маски.
Значение по умолчанию — 128, что подходит практически для всех случаев использования. Большие размеры приведут к увеличению размера файлов выравниваний и более длительной обработке. Инструмент "Маска"
Создавайте, импортируйте, экспортируйте или просматривайте маски для существующих файлов трасс. Необязательное местоположение вывода. Если указано, предварительный просмотр созданных масок будет выведен в указанную папку. R|Как форматировать вывод, когда обработка установлена на 'output'.
L|combined: Изображение содержит лицо/кадр, маску лица и маскированное лицо.
L|masked: Вывести лицо/кадр как изображение rgba с маскированным лицом.
L|mask: Выводить только маску как одноканальное изображение. R|Только импорт. Центрирование, используемое при импорте масок. Примечание. Для любого задания, кроме «импорта», этот параметр игнорируется, поскольку центрирование маски обрабатывается внутри.
L|face: центрирует маску по центру лица с регулировкой угла наклона и отклонения от курса. Помимо требований к полной маскировке/тренировке головы, это, вероятно, будет лучшим выбором.
L|head: центрирует маску по центру головы с регулировкой угла наклона и отклонения от курса. Примечание. Выбирать центрирование головы следует только в том случае, если вы собираетесь включить в маску всю голову (включая волосы) и хотите обучить модель полной головы.
L|legacy: «Оригинальная» техника извлечения. Центрирует маску возле носа и приближает ее к лицу. Это может привести к тому, что края маски окажутся за пределами тренировочной зоны. R|Только импорт. Путь к папке, содержащей маски для импорта.
L|Как предоставляются маски, не важно, но они будут храниться внутри как 8-битные изображения в оттенках серого.
L|Если входными данными являются изображения, то имена масок должны быть точно такими же, как у входных кадров/лиц (за исключением расширения файла).
L|Если входной файл представляет собой видеофайл, то имя файла масок не важно, но должно содержать номер кадра в конце имени файла (но перед расширением файла). Номер кадра может быть отделен от остальной части имени файла любым нечисловым символом и дополнен любым количеством нулей. Номер кадра должен правильно соответствовать номеру кадра в исходном видео (начиная с кадра 1). R|Маскер для использования.
L|bisenet-fp: Относительно легкая маска на основе NN, которая обеспечивает более точный контроль над маскируемой областью, включая полное маскирование головы (настраивается в настройках маски).
L|components: Маска, разработанная для сегментации лица на основе расположения ориентиров. Для создания маски вокруг внешних ориентиров строится выпуклая оболочка.
L|custom (пользовательская): Фиктивная маска, которая заполняет область маски всеми 1 или 0 (настраивается в настройках). Она необходима только в том случае, если вы собираетесь вручную редактировать пользовательские маски в ручном инструменте. Эта маска не использует GPU.
L|extended: Маска предназначена для сегментации лица на основе расположения ориентиров. Выпуклая оболочка строится вокруг внешних ориентиров, и маска расширяется вверх на лоб.
L|vgg-clear: Маска предназначена для интеллектуальной сегментации преимущественно фронтальных лиц без препятствий. Профильные лица и препятствия могут привести к снижению производительности.
L|vgg-obstructed: Маска, разработанная для интеллектуальной сегментации преимущественно фронтальных лиц. Модель маски была специально обучена распознавать некоторые препятствия на лице (руки и очки). Лица в профиль могут иметь низкую производительность.
L|unet-dfl: Маска, разработанная для интеллектуальной сегментации преимущественно фронтальных лиц. Модель маски была обучена членами сообщества и для дальнейшего описания нуждается в тестировании. Профильные лица могут иметь низкую производительность. R|Запустить инструмент маски на нескольких источниках. Если выбрано, то остальные параметры должны быть установлены следующим образом:
L|input: Родительская папка, содержащая либо все видеофайлы для обработки, либо содержащая вложенные папки кадров/лиц.
L|output-folder: Если указано, то в заданном месте будут созданы вложенные папки для хранения превью для каждого входа.
L|alignments: Поле выравнивания будет игнорироваться при пакетной обработке. Файлы выравнивания должны существовать в месте по умолчанию (для кадров). При пакетной обработке масок с типом входа "лица" будут обновлены только заголовки PNG в извлеченных лицах. R|El proceso de la herramienta Máscara a realizar.
L|all: actualiza la máscara de todas las caras en el archivo de alineaciones para el 'masker' seleccionado.
L|missing: crea una máscara para todas las caras en el archivo de alineaciones donde no existe previamente una máscara para el 'masker' seleccionado.
L|output: no actualice las máscaras, simplemente envíe el 'masker' seleccionado para su revisión/edición en herramientas externas a la carpeta de salida proporcionada.
L|import: importa máscaras que se han editado fuera de faceswap al archivo de alineaciones. Nota: 'custom' debe ser el 'masker' seleccionado y las máscaras deben tener el mismo formato que el 'input-type' (frames o faces) R|Выбирается ли "вход" как папка лиц или как папка кадров/видео
L|faces: Входом является папка, содержащая извлеченные лица.
L|frames: Входом является папка с кадрами или видео R|Выводить ли весь кадр или только поле лица при использовании выходной обработки. Имеет значение только при использовании кадров в качестве входных данных. Этот инструмент позволяет создавать, импортировать, экспортировать или просматривать маски для существующих трасс. данные Импортировать вывод обработка 