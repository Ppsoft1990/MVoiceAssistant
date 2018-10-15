.class public final enum Lcom/iflytek/viafly/audiorecorder/PCMFormat;
.super Ljava/lang/Enum;
.source "PCMFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/audiorecorder/PCMFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/audiorecorder/PCMFormat;

.field public static final enum PCM_16BIT:Lcom/iflytek/viafly/audiorecorder/PCMFormat;

.field public static final enum PCM_8BIT:Lcom/iflytek/viafly/audiorecorder/PCMFormat;


# instance fields
.field private audioFormat:I

.field private bytesPerFrame:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11
    new-instance v0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    const-string/jumbo v1, "PCM_8BIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/iflytek/viafly/audiorecorder/PCMFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->PCM_8BIT:Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    .line 12
    new-instance v0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    const-string/jumbo v1, "PCM_16BIT"

    invoke-direct {v0, v1, v3, v4, v4}, Lcom/iflytek/viafly/audiorecorder/PCMFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->PCM_16BIT:Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    .line 10
    new-array v0, v4, [Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    sget-object v1, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->PCM_8BIT:Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->PCM_16BIT:Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->$VALUES:[Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "bytesPerFrame"    # I
    .param p4, "audioFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->bytesPerFrame:I

    .line 19
    iput p4, p0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->audioFormat:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/audiorecorder/PCMFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/audiorecorder/PCMFormat;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->$VALUES:[Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/audiorecorder/PCMFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/audiorecorder/PCMFormat;

    return-object v0
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->audioFormat:I

    return v0
.end method

.method public getBytesPerFrame()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/iflytek/viafly/audiorecorder/PCMFormat;->bytesPerFrame:I

    return v0
.end method
