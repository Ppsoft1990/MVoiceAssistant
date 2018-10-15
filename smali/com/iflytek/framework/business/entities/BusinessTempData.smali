.class public final Lcom/iflytek/framework/business/entities/BusinessTempData;
.super Ljava/lang/Object;
.source "BusinessTempData.java"


# static fields
.field private static mBusinessFocus:Ljava/lang/String;

.field private static mCacheFocus:Ljava/lang/String;

.field private static mCacheResultHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

.field private static mGrammar:[Ljava/lang/String;

.field private static mInteractionScene:Lcom/iflytek/framework/business/speech/InteractionScene;

.field private static mInteractionStartTime:J

.field private static mIseedStartWakeEngine:Z

.field private static mSpeechIntent:Landroid/content/Intent;

.field private static mStartHomeInfo:Lcom/iflytek/framework/business/entities/StartHomeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mIseedStartWakeEngine:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTempData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 143
    sput-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mCacheFocus:Ljava/lang/String;

    .line 144
    sput-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mStartHomeInfo:Lcom/iflytek/framework/business/entities/StartHomeInfo;

    .line 145
    sput-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mGrammar:[Ljava/lang/String;

    .line 146
    sput-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mSpeechIntent:Landroid/content/Intent;

    .line 147
    sput-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mInteractionScene:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 148
    return-void
.end method

.method public static getBusinessFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mBusinessFocus:Ljava/lang/String;

    return-object v0
.end method

.method public static getCacheBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mCacheResultHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    return-object v0
.end method

.method public static getCacheSpeechResultFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mCacheFocus:Ljava/lang/String;

    return-object v0
.end method

.method public static getGrammar()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mGrammar:[Ljava/lang/String;

    return-object v0
.end method

.method public static getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mInteractionScene:Lcom/iflytek/framework/business/speech/InteractionScene;

    return-object v0
.end method

.method public static getInteractionStartTime()J
    .locals 2

    .prologue
    .line 55
    sget-wide v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mInteractionStartTime:J

    return-wide v0
.end method

.method public static getSpeechIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mSpeechIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getStartHomeInfo()Lcom/iflytek/framework/business/entities/StartHomeInfo;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mStartHomeInfo:Lcom/iflytek/framework/business/entities/StartHomeInfo;

    return-object v0
.end method

.method public static needStartWakeEngine()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mIseedStartWakeEngine:Z

    return v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    .line 152
    invoke-static {}, Labb;->a()V

    .line 153
    sput-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mCacheResultHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    .line 154
    sput-object v0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mBusinessFocus:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public static setBusinessFocus(Ljava/lang/String;)V
    .locals 0
    .param p0, "businessFocus"    # Ljava/lang/String;

    .prologue
    .line 51
    sput-object p0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mBusinessFocus:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static setCacheBusinessHandler(Lcom/iflytek/framework/business/interfaces/IBusinessHandler;)V
    .locals 0
    .param p0, "currentResultHandler"    # Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    .prologue
    .line 123
    sput-object p0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mCacheResultHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    .line 124
    return-void
.end method

.method public static setCacheSpeechResultFocus(Ljava/lang/String;)V
    .locals 0
    .param p0, "currentResultFocus"    # Ljava/lang/String;

    .prologue
    .line 139
    sput-object p0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mCacheFocus:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public static setGrammar([Ljava/lang/String;)V
    .locals 0
    .param p0, "grammar"    # [Ljava/lang/String;

    .prologue
    .line 67
    sput-object p0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mGrammar:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static setInteractionScene(Lcom/iflytek/framework/business/speech/InteractionScene;)V
    .locals 0
    .param p0, "interactionScene"    # Lcom/iflytek/framework/business/speech/InteractionScene;

    .prologue
    .line 91
    sput-object p0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mInteractionScene:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 92
    return-void
.end method

.method public static setInteractionStartTime(J)V
    .locals 0
    .param p0, "startTime"    # J

    .prologue
    .line 59
    sput-wide p0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mInteractionStartTime:J

    .line 60
    return-void
.end method

.method public static setNeedStartWakeEngine(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 107
    sput-boolean p0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mIseedStartWakeEngine:Z

    .line 108
    return-void
.end method

.method public static setSpeechIntent(Landroid/content/Intent;)V
    .locals 0
    .param p0, "speechIntent"    # Landroid/content/Intent;

    .prologue
    .line 75
    sput-object p0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mSpeechIntent:Landroid/content/Intent;

    .line 76
    return-void
.end method

.method public static setStartHomeInfo(Lcom/iflytek/framework/business/entities/StartHomeInfo;)V
    .locals 0
    .param p0, "startHomeInfo"    # Lcom/iflytek/framework/business/entities/StartHomeInfo;

    .prologue
    .line 162
    sput-object p0, Lcom/iflytek/framework/business/entities/BusinessTempData;->mStartHomeInfo:Lcom/iflytek/framework/business/entities/StartHomeInfo;

    .line 163
    return-void
.end method
