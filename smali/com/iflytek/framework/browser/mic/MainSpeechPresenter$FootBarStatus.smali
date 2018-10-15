.class public final enum Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;
.super Ljava/lang/Enum;
.source "MainSpeechPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FootBarStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

.field public static final enum INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

.field public static final enum KEYBOARD:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

.field public static final enum MIC:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

.field public static final enum TOOL:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    const-string/jumbo v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    new-instance v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    const-string/jumbo v1, "KEYBOARD"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->KEYBOARD:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    new-instance v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    const-string/jumbo v1, "MIC"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->MIC:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    new-instance v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    const-string/jumbo v1, "TOOL"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->TOOL:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->INIT:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->KEYBOARD:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->MIC:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->TOOL:Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->$VALUES:[Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->$VALUES:[Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    invoke-virtual {v0}, [Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/browser/mic/MainSpeechPresenter$FootBarStatus;

    return-object v0
.end method
