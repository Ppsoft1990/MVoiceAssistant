.class public final Lcom/iflytek/framework/business/entities/BusinessConstants;
.super Ljava/lang/Object;
.source "BusinessConstants.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field private static final MUSIC_REQUEST_CODE_FEE_CONFIRM:I = 0x3ea

.field private static final MUSIC_REQUEST_CODE_RECORD_DIALOG:I = 0x3eb

.field private static final MUSIC_REQUEST_CODE_SELECT_CONTACTS:I = 0x3e9

.field private static mComponentNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFocusList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    .line 50
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/AppComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/AppComponents;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/ShareComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/ShareComponents;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/RecognizeComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/RecognizeComponents;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/LBSComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/LBSComponents;

    .line 61
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/SystemComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/SystemComponents;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/UIComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/UIComponents;

    .line 65
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/CallAndSmsComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/CallAndSmsComponents;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/EventComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/EventComponents;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/lxOvsExtComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/lxOvsExtComponents;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/viafly/music/MusicBusinessComponent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/music/MusicBusinessComponent;

    .line 73
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/AuthComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/AuthComponents;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/LogComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/LogComponents;

    .line 77
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/NewsComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/NewsComponents;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/DownloadComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/DownloadComponents;

    .line 81
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/ContactsComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/ContactsComponents;

    .line 83
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/PayComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/PayComponents;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/ListeningComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/ListeningComponents;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/CommonComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/CommonComponents;

    .line 92
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/AudioComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/AudioComponents;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/PicComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/PicComponents;

    .line 96
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-class v1, Lcom/iflytek/framework/business/components/BurypointComponents;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/business/components/BurypointComponents;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "iat"

    const-class v2, Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tts"

    const-class v2, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    .line 106
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "telephone|message|contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "cinemas"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "data_transfer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "dialog"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "flight"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "other"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "picture"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "weather"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "news"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "website"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "translation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "novel"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "telephone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "telephone_credits"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "telephone_fee"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "stock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "train"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "train|flight|hotel"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "lottery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "websearch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "map"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "cmread_listenbook_search"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "lbs"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "restaurant"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "other"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "local_search"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "package_margin"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "v_cinema"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "hotel"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    const-string/jumbo v1, "smarthome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mRequestCodeMap:Ljava/util/HashMap;

    .line 146
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mRequestCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/music/MusicBusinessComponent;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mRequestCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x3eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/music/MusicBusinessComponent;

    .line 149
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mRequestCodeMap:Ljava/util/HashMap;

    const/16 v1, 0x3ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/music/MusicBusinessComponent;

    .line 151
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityResultHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mRequestCodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getBaseComponentNames()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mComponentNameMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getFocusHashSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessConstants;->mFocusList:Ljava/util/HashSet;

    return-object v0
.end method
