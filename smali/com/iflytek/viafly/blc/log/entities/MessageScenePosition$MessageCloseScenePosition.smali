.class public final enum Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;
.super Ljava/lang/Enum;
.source "MessageScenePosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageCloseScenePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

.field public static final enum notify_bar:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

.field public static final enum notify_pop_windows:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    const-string/jumbo v1, "notify_bar"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;->notify_bar:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    .line 36
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    const-string/jumbo v1, "notify_pop_windows"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;->notify_pop_windows:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;->notify_bar:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;->notify_pop_windows:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;->$VALUES:[Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;->$VALUES:[Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    return-object v0
.end method
