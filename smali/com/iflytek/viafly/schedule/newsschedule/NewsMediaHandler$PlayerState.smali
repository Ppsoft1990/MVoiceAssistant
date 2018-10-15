.class public final enum Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;
.super Ljava/lang/Enum;
.source "NewsMediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

.field public static final enum pause:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

.field public static final enum playing:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

.field public static final enum specialState:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

.field public static final enum stop:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    new-instance v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    const-string/jumbo v1, "playing"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->playing:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    new-instance v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    const-string/jumbo v1, "pause"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->pause:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    new-instance v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    const-string/jumbo v1, "stop"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->stop:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    new-instance v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    const-string/jumbo v1, "specialState"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->specialState:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    .line 235
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    sget-object v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->playing:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->pause:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->stop:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->specialState:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->$VALUES:[Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

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
    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 235
    const-class v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->$VALUES:[Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    return-object v0
.end method
