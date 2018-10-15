.class final enum Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;
.super Ljava/lang/Enum;
.source "VoiceNoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EditFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

.field public static final enum detail:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

.field public static final enum text:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

.field public static final enum voice:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    const-string/jumbo v1, "text"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->text:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    new-instance v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    const-string/jumbo v1, "voice"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->voice:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    new-instance v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    const-string/jumbo v1, "detail"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->detail:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    sget-object v1, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->text:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->voice:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->detail:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->$VALUES:[Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->$VALUES:[Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    return-object v0
.end method
