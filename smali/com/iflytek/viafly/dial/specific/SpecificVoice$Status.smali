.class public final enum Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;
.super Ljava/lang/Enum;
.source "SpecificVoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/dial/specific/SpecificVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

.field public static final enum STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

.field public static final enum STATUS_DOWNLOADING:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

.field public static final enum STATUS_ERROR:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

.field public static final enum STATUS_INIT:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

.field public static final enum STATUS_PAUSED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    const-string/jumbo v1, "STATUS_INIT"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_INIT:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    const-string/jumbo v1, "STATUS_DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    .line 18
    new-instance v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    const-string/jumbo v1, "STATUS_PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_PAUSED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    .line 20
    new-instance v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    const-string/jumbo v1, "STATUS_DOWNLOADED"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    .line 22
    new-instance v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    const-string/jumbo v1, "STATUS_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_ERROR:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_INIT:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADING:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_PAUSED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_ERROR:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->$VALUES:[Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->$VALUES:[Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    return-object v0
.end method
