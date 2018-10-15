.class public final enum Lcom/iflytek/common/speech/entities/SpeechEntry;
.super Ljava/lang/Enum;
.source "SpeechEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/common/speech/entities/SpeechEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/common/speech/entities/SpeechEntry;

.field public static final enum home:Lcom/iflytek/common/speech/entities/SpeechEntry;

.field public static final enum long_press:Lcom/iflytek/common/speech/entities/SpeechEntry;

.field public static final enum shortcut:Lcom/iflytek/common/speech/entities/SpeechEntry;

.field public static final enum speech_test:Lcom/iflytek/common/speech/entities/SpeechEntry;

.field public static final enum widget_call:Lcom/iflytek/common/speech/entities/SpeechEntry;

.field public static final enum widget_mic:Lcom/iflytek/common/speech/entities/SpeechEntry;

.field public static final enum widget_sms:Lcom/iflytek/common/speech/entities/SpeechEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/iflytek/common/speech/entities/SpeechEntry;

    const-string/jumbo v1, "home"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/common/speech/entities/SpeechEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/entities/SpeechEntry;->home:Lcom/iflytek/common/speech/entities/SpeechEntry;

    .line 17
    new-instance v0, Lcom/iflytek/common/speech/entities/SpeechEntry;

    const-string/jumbo v1, "widget_mic"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/common/speech/entities/SpeechEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/entities/SpeechEntry;->widget_mic:Lcom/iflytek/common/speech/entities/SpeechEntry;

    .line 21
    new-instance v0, Lcom/iflytek/common/speech/entities/SpeechEntry;

    const-string/jumbo v1, "widget_call"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/common/speech/entities/SpeechEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/entities/SpeechEntry;->widget_call:Lcom/iflytek/common/speech/entities/SpeechEntry;

    .line 25
    new-instance v0, Lcom/iflytek/common/speech/entities/SpeechEntry;

    const-string/jumbo v1, "widget_sms"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/common/speech/entities/SpeechEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/entities/SpeechEntry;->widget_sms:Lcom/iflytek/common/speech/entities/SpeechEntry;

    .line 29
    new-instance v0, Lcom/iflytek/common/speech/entities/SpeechEntry;

    const-string/jumbo v1, "long_press"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/common/speech/entities/SpeechEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/entities/SpeechEntry;->long_press:Lcom/iflytek/common/speech/entities/SpeechEntry;

    .line 33
    new-instance v0, Lcom/iflytek/common/speech/entities/SpeechEntry;

    const-string/jumbo v1, "shortcut"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/speech/entities/SpeechEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/entities/SpeechEntry;->shortcut:Lcom/iflytek/common/speech/entities/SpeechEntry;

    .line 37
    new-instance v0, Lcom/iflytek/common/speech/entities/SpeechEntry;

    const-string/jumbo v1, "speech_test"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/speech/entities/SpeechEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/speech/entities/SpeechEntry;->speech_test:Lcom/iflytek/common/speech/entities/SpeechEntry;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iflytek/common/speech/entities/SpeechEntry;

    sget-object v1, Lcom/iflytek/common/speech/entities/SpeechEntry;->home:Lcom/iflytek/common/speech/entities/SpeechEntry;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/common/speech/entities/SpeechEntry;->widget_mic:Lcom/iflytek/common/speech/entities/SpeechEntry;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/common/speech/entities/SpeechEntry;->widget_call:Lcom/iflytek/common/speech/entities/SpeechEntry;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/common/speech/entities/SpeechEntry;->widget_sms:Lcom/iflytek/common/speech/entities/SpeechEntry;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/common/speech/entities/SpeechEntry;->long_press:Lcom/iflytek/common/speech/entities/SpeechEntry;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/common/speech/entities/SpeechEntry;->shortcut:Lcom/iflytek/common/speech/entities/SpeechEntry;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/common/speech/entities/SpeechEntry;->speech_test:Lcom/iflytek/common/speech/entities/SpeechEntry;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/common/speech/entities/SpeechEntry;->$VALUES:[Lcom/iflytek/common/speech/entities/SpeechEntry;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/common/speech/entities/SpeechEntry;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/common/speech/entities/SpeechEntry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/speech/entities/SpeechEntry;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/common/speech/entities/SpeechEntry;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/common/speech/entities/SpeechEntry;->$VALUES:[Lcom/iflytek/common/speech/entities/SpeechEntry;

    invoke-virtual {v0}, [Lcom/iflytek/common/speech/entities/SpeechEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/common/speech/entities/SpeechEntry;

    return-object v0
.end method
