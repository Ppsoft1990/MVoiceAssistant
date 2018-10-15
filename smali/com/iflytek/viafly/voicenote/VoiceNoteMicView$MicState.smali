.class final enum Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;
.super Ljava/lang/Enum;
.source "VoiceNoteMicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MicState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

.field public static final enum idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

.field public static final enum init:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

.field public static final enum recording:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

.field public static final enum wait_result:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    const-string/jumbo v1, "init"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->init:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    new-instance v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    const-string/jumbo v1, "idle"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    new-instance v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    const-string/jumbo v1, "recording"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->recording:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    new-instance v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    const-string/jumbo v1, "wait_result"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->wait_result:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    sget-object v1, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->init:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->idle:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->recording:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->wait_result:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->$VALUES:[Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->$VALUES:[Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$MicState;

    return-object v0
.end method
