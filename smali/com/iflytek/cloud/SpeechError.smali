.class public Lcom/iflytek/cloud/SpeechError;
.super Ljava/lang/Exception;


# static fields
.field protected static final TIP_ENGINE_NOT_INSTALLED:I = 0x1d

.field public static final TIP_ERROR_ALREADY_EXIST:I = 0x42

.field protected static final TIP_ERROR_AUDIO_RECORD:I = 0x9

.field protected static final TIP_ERROR_BROWSER_NOT_INSTALLED:I = 0x1a

.field protected static final TIP_ERROR_CLIENT:I = 0x8

.field protected static final TIP_ERROR_EMPTY_UTTERANCE:I = 0xd

.field protected static final TIP_ERROR_ENGINE_INIT_FAIL:I = 0x1c

.field protected static final TIP_ERROR_EXIST_UNLISTED_WORD:I = 0x2a

.field protected static final TIP_ERROR_FACE_IMAGE_FULL_LEFT:I = 0x2c

.field protected static final TIP_ERROR_FACE_IMAGE_FULL_RIGHT:I = 0x2d

.field protected static final TIP_ERROR_FACE_INVALID_MODEL:I = 0x33

.field protected static final TIP_ERROR_FACE_OCCULTATION:I = 0x32

.field protected static final TIP_ERROR_FILE_ACCESS:I = 0xe

.field protected static final TIP_ERROR_FUSION_ENOUGH_DATA:I = 0x36

.field protected static final TIP_ERROR_FUSION_INVALID_INPUT_TYPE:I = 0x34

.field protected static final TIP_ERROR_FUSION_NO_ENOUGH_DATA:I = 0x35

.field public static final TIP_ERROR_GROUP_EMPTY:I = 0x44

.field protected static final TIP_ERROR_ILLUMINATION:I = 0x31

.field protected static final TIP_ERROR_IMAGE_CLOCKWISE_WHIRL:I = 0x2e

.field protected static final TIP_ERROR_IMAGE_COUNTET_CLOCKWISE_WHIRL:I = 0x2f

.field protected static final TIP_ERROR_INSUFFICIENT_PERMISSIONS:I = 0x4

.field protected static final TIP_ERROR_INTERRUPT:I = 0x1b

.field protected static final TIP_ERROR_INVALID_DATA:I = 0x14

.field protected static final TIP_ERROR_INVALID_ENCODING:I = 0xc

.field protected static final TIP_ERROR_INVALID_GRAMMAR:I = 0x15

.field protected static final TIP_ERROR_INVALID_LOCAL_RESOURCE:I = 0x16

.field protected static final TIP_ERROR_INVALID_PARAM:I = 0x7

.field protected static final TIP_ERROR_INVALID_RESULT:I = 0x5

.field protected static final TIP_ERROR_IN_USE:I = 0x13

.field public static final TIP_ERROR_IVP_EXTRA_RGN_SOPPORT:I = 0x38

.field public static final TIP_ERROR_IVP_GENERAL:I = 0x37

.field public static final TIP_ERROR_IVP_MUCH_NOISE:I = 0x3a

.field public static final TIP_ERROR_IVP_NO_ENOUGH_AUDIO:I = 0x3f

.field public static final TIP_ERROR_IVP_TEXT_NOT_MATCH:I = 0x3e

.field public static final TIP_ERROR_IVP_TOO_LOW:I = 0x3b

.field public static final TIP_ERROR_IVP_TRUNCATED:I = 0x39

.field public static final TIP_ERROR_IVP_UTTER_TOO_SHORT:I = 0x3d

.field public static final TIP_ERROR_IVP_ZERO_AUDIO:I = 0x3c

.field protected static final TIP_ERROR_LOGIN:I = 0x12

.field protected static final TIP_ERROR_LOGIN_INVALID_PWD:I = 0x18

.field protected static final TIP_ERROR_LOGIN_INVALID_USER:I = 0x17

.field protected static final TIP_ERROR_MEMORY_WRANING:I = 0x10

.field public static final TIP_ERROR_MODEL_IS_CREATING:I = 0x41

.field public static final TIP_ERROR_MODEL_NOT_FOUND:I = 0x40

.field protected static final TIP_ERROR_NET_EXPECTION:I = 0x3

.field protected static final TIP_ERROR_NOISY_OR_SHORT_AUDIO:I = 0x24

.field protected static final TIP_ERROR_NOT_FACE_IMAGE:I = 0x2b

.field protected static final TIP_ERROR_NOT_PAPER_DATA:I = 0x25

.field protected static final TIP_ERROR_NO_CONTENT:I = 0x22

.field public static final TIP_ERROR_NO_GROUP:I = 0x43

.field protected static final TIP_ERROR_NO_MATCH:I = 0xa

.field protected static final TIP_ERROR_NO_PICTURE:I = 0x21

.field public static final TIP_ERROR_NO_USER:I = 0x45

.field protected static final TIP_ERROR_OTHER_DATA_EXCEPTION:I = 0x28

.field public static final TIP_ERROR_OVERFLOW_IN_GROUP:I = 0x46

.field protected static final TIP_ERROR_PERMISSION_DENIED:I = 0x19

.field protected static final TIP_ERROR_PLAY_MEDIA:I = 0xf

.field protected static final TIP_ERROR_SERVER_CONNECT:I = 0x6

.field protected static final TIP_ERROR_SILENT_OR_LOW_VOLUME:I = 0x23

.field protected static final TIP_ERROR_SPEECH_TIMEOUT:I = 0xb

.field protected static final TIP_ERROR_TEXT_OVERFLOW:I = 0x11

.field protected static final TIP_ERROR_VALID_IMAGE_SIZE:I = 0x30

.field protected static final TIP_ERROR_WRONG_AUDIO_FORMAT:I = 0x27

.field protected static final TIP_ERROR_WRONG_PAPER_CONTENT:I = 0x26

.field protected static final TIP_ERROR_WRONG_PAPER_FORMAT:I = 0x29

.field protected static final TIP_INVALID_AUTHORIZATION:I = 0x20

.field protected static final TIP_LOCAL_ENGINE_ERROR:I = 0x1e

.field protected static final TIP_NO_NETWORK:I = 0x1

.field protected static final TIP_RESULT_TIMEOUT:I = 0x2

.field protected static final TIP_SCRIPT_ERROR:I = 0x1f

.field private static final serialVersionUID:J = 0x3d8a3d5cb4c84b7cL


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/16 v3, 0x12

    const/16 v0, 0xb

    const/4 v4, 0x7

    const/16 v2, 0x40

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v5, 0x0

    iput v5, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/iflytek/cloud/SpeechError;->mDescription:Ljava/lang/String;

    iput p1, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v5, 0x4e21

    if-ge p1, v5, :cond_21

    iget v5, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v6, 0x2786

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_0
    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    sparse-switch v1, :sswitch_data_0

    move v2, v0

    :goto_1
    :sswitch_0
    invoke-static {v2}, Lmk;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechError;->mDescription:Ljava/lang/String;

    return-void

    :cond_1
    const/16 v0, 0x277a

    iget v5, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    if-eq v0, v5, :cond_2

    const/16 v0, 0x277b

    iget v5, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    if-eq v0, v5, :cond_2

    const/16 v0, 0x278c

    iget v5, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    if-ne v0, v5, :cond_3

    :cond_2
    const-string/jumbo v0, "sdk errorcode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x277e

    if-ne v0, v4, :cond_4

    const/16 v0, 0x20

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x277f

    if-ne v0, v4, :cond_5

    const/16 v0, 0x1c

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x27d8

    if-lt v0, v4, :cond_6

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x283c

    if-ge v0, v4, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x2785

    if-eq v0, v4, :cond_7

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x2775

    if-ne v0, v4, :cond_8

    :cond_7
    const/16 v0, 0x10

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x2781

    if-ne v0, v4, :cond_9

    const/16 v0, 0x11

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x2784

    if-ne v0, v4, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x2789

    if-ne v0, v4, :cond_b

    const/16 v0, 0x42

    goto :goto_0

    :cond_b
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x28a0

    if-lt v0, v4, :cond_c

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x28a7

    if-gt v0, v4, :cond_c

    move v0, v3

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x2af8

    if-lt v0, v4, :cond_f

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v4, 0x2b5b

    if-ge v0, v4, :cond_f

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v1, 0x2afd

    if-ne v0, v1, :cond_d

    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_d
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v1, 0x2afe

    if-ne v0, v1, :cond_e

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_e
    move v0, v3

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x2791

    if-ne v0, v3, :cond_10

    const/16 v0, 0x13

    goto/16 :goto_0

    :cond_10
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x277d

    if-ne v0, v3, :cond_11

    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_11
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x29ce

    if-ne v0, v3, :cond_12

    const/16 v0, 0x15

    goto/16 :goto_0

    :cond_12
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x2904

    if-lt v0, v3, :cond_13

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x2968

    if-ge v0, v3, :cond_13

    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_13
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x2bc0

    if-lt v0, v3, :cond_14

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x2bf2

    if-gt v0, v3, :cond_14

    const/16 v0, 0x19

    goto/16 :goto_0

    :cond_14
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x36b0

    if-lt v0, v3, :cond_15

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x36b6

    if-gt v0, v3, :cond_15

    const/16 v0, 0x1f

    goto/16 :goto_0

    :cond_15
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x3e80

    if-lt v0, v3, :cond_16

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x3e86

    if-gt v0, v3, :cond_16

    const/16 v0, 0x1f

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x2c89

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    if-ne v0, v3, :cond_17

    const/16 v0, 0x23

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x2c8a

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    if-ne v0, v3, :cond_18

    const/16 v0, 0x24

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x2c8b

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    if-ne v0, v3, :cond_19

    const/16 v0, 0x25

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x2c8c

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    if-ne v0, v3, :cond_1a

    const/16 v0, 0x26

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x2c8d

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    if-ne v0, v3, :cond_1b

    const/16 v0, 0x27

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0x2c8e

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    if-ne v0, v3, :cond_1c

    const/16 v0, 0x28

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0x2c8f

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    if-ne v0, v3, :cond_1d

    const/16 v0, 0x29

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0x2c90

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    if-ne v0, v3, :cond_1e

    const/16 v0, 0x2a

    goto/16 :goto_0

    :cond_1e
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x2ced

    if-ne v0, v3, :cond_1f

    const/16 v0, 0x41

    goto/16 :goto_0

    :cond_1f
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x2cee

    if-ne v0, v3, :cond_20

    move v0, v2

    goto/16 :goto_0

    :cond_20
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x2cef

    if-ne v0, v3, :cond_2f

    const/16 v0, 0x13

    goto/16 :goto_0

    :cond_21
    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v5, 0x7530

    if-ge v3, v5, :cond_2f

    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v5, 0x4e21

    if-ne v3, v5, :cond_22

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_22
    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v5, 0x4e22

    if-ne v3, v5, :cond_23

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_23
    iget v3, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v5, 0x4e23

    if-ne v3, v5, :cond_24

    move v0, v1

    goto/16 :goto_0

    :cond_24
    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x4e24

    if-ne v1, v3, :cond_25

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_25
    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x4e25

    if-ne v1, v3, :cond_26

    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_26
    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x4e26

    if-ne v1, v3, :cond_27

    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_27
    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x4e27

    if-ne v1, v3, :cond_28

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_28
    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v3, 0x4e28

    if-eq v1, v3, :cond_0

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v1, 0x4e29

    if-ne v0, v1, :cond_29

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_29
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v1, 0x4e2a

    if-ne v0, v1, :cond_2a

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_2a
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v1, 0x4e2c

    if-ne v0, v1, :cond_2b

    move v0, v4

    goto/16 :goto_0

    :cond_2b
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v1, 0x520b

    if-ne v0, v1, :cond_2c

    const/16 v0, 0x1c

    goto/16 :goto_0

    :cond_2c
    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v1, 0x520a

    if-eq v0, v1, :cond_2d

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const/16 v1, 0x5209

    if-ne v0, v1, :cond_2e

    :cond_2d
    const/16 v0, 0x1d

    goto/16 :goto_0

    :cond_2e
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_1
    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_2
    const/16 v2, 0x38

    goto/16 :goto_1

    :sswitch_3
    const/16 v2, 0x39

    goto/16 :goto_1

    :sswitch_4
    const/16 v2, 0x3a

    goto/16 :goto_1

    :sswitch_5
    const/16 v2, 0x3b

    goto/16 :goto_1

    :sswitch_6
    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_7
    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_8
    const/16 v2, 0x3e

    goto/16 :goto_1

    :sswitch_9
    const/16 v2, 0x3f

    goto/16 :goto_1

    :sswitch_a
    const/16 v2, 0x41

    goto/16 :goto_1

    :sswitch_b
    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_c
    const/16 v2, 0x2c

    goto/16 :goto_1

    :sswitch_d
    const/16 v2, 0x2d

    goto/16 :goto_1

    :sswitch_e
    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_f
    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_10
    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_11
    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_12
    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_13
    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_14
    const/16 v2, 0x34

    goto/16 :goto_1

    :sswitch_15
    const/16 v2, 0x35

    goto/16 :goto_1

    :sswitch_16
    const/16 v2, 0x36

    goto/16 :goto_1

    :sswitch_17
    const/16 v2, 0x43

    goto/16 :goto_1

    :sswitch_18
    const/16 v2, 0x44

    goto/16 :goto_1

    :sswitch_19
    const/16 v2, 0x45

    goto/16 :goto_1

    :sswitch_1a
    const/16 v2, 0x46

    goto/16 :goto_1

    :cond_2f
    move v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x272f -> :sswitch_a
        0x279d -> :sswitch_18
        0x279e -> :sswitch_19
        0x279f -> :sswitch_17
        0x27a0 -> :sswitch_1a
        0x2d50 -> :sswitch_1
        0x2d51 -> :sswitch_2
        0x2d52 -> :sswitch_3
        0x2d53 -> :sswitch_4
        0x2d54 -> :sswitch_5
        0x2d55 -> :sswitch_6
        0x2d56 -> :sswitch_7
        0x2d57 -> :sswitch_8
        0x2d58 -> :sswitch_9
        0x2d5a -> :sswitch_0
        0x2db4 -> :sswitch_b
        0x2db5 -> :sswitch_c
        0x2db6 -> :sswitch_d
        0x2db7 -> :sswitch_e
        0x2db8 -> :sswitch_f
        0x2db9 -> :sswitch_10
        0x2dba -> :sswitch_11
        0x2dbb -> :sswitch_12
        0x2dbc -> :sswitch_13
        0x2dbd -> :sswitch_14
        0x2dbe -> :sswitch_15
        0x2dbf -> :sswitch_16
        0x2dc0 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    const-string/jumbo v0, "wfr"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2786

    if-ne v0, p1, :cond_1

    const/16 v0, 0x21

    invoke-static {v0}, Lmk;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechError;->mDescription:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x2787

    if-ne v0, p1, :cond_0

    const/16 v0, 0x22

    invoke-static {v0}, Lmk;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechError;->mDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechError;->mDescription:Ljava/lang/String;

    const/16 v0, 0x5207

    iput v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechError;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    return v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechError;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlDescription(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechError;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<br>("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lmk;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPlainDescription(Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechError;->mDescription:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lmk;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/SpeechError;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/SpeechError;->getPlainDescription(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
