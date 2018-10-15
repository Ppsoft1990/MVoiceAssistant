.class public final enum Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;
.super Ljava/lang/Enum;
.source "MessageScenePosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageClickScenePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

.field public static final enum notify_bar:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

.field public static final enum notify_bar_btn:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

.field public static final enum notify_pop_windows:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    const-string/jumbo v1, "notify_bar"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->notify_bar:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    .line 15
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    const-string/jumbo v1, "notify_bar_btn"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->notify_bar_btn:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    const-string/jumbo v1, "notify_pop_windows"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->notify_pop_windows:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->notify_bar:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->notify_bar_btn:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->notify_pop_windows:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->$VALUES:[Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->$VALUES:[Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    return-object v0
.end method
