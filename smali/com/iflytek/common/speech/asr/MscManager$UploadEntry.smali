.class public final enum Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;
.super Ljava/lang/Enum;
.source "MscManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/speech/asr/MscManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

.field public static final enum APP_CREATE:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

.field public static final enum CONTACT_CHANGE:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

.field public static final enum CONTACT_RECOGNITION:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

.field public static final enum GET_CONFIG_FINISH:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

.field public static final enum HOME:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

.field public static final enum IMPORT:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

.field public static final enum LANGUAGE_CHANGE:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    new-instance v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    const-string/jumbo v1, "HOME"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->HOME:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    .line 103
    new-instance v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    const-string/jumbo v1, "IMPORT"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->IMPORT:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    .line 104
    new-instance v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    const-string/jumbo v1, "GET_CONFIG_FINISH"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->GET_CONFIG_FINISH:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    .line 105
    new-instance v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    const-string/jumbo v1, "CONTACT_CHANGE"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->CONTACT_CHANGE:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    .line 106
    new-instance v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    const-string/jumbo v1, "LANGUAGE_CHANGE"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->LANGUAGE_CHANGE:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    .line 107
    new-instance v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    const-string/jumbo v1, "CONTACT_RECOGNITION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->CONTACT_RECOGNITION:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    .line 108
    new-instance v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    const-string/jumbo v1, "APP_CREATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->APP_CREATE:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    sget-object v1, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->HOME:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->IMPORT:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->GET_CONFIG_FINISH:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->CONTACT_CHANGE:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->LANGUAGE_CHANGE:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->CONTACT_RECOGNITION:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->APP_CREATE:Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->$VALUES:[Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->$VALUES:[Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    invoke-virtual {v0}, [Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/common/speech/asr/MscManager$UploadEntry;

    return-object v0
.end method
