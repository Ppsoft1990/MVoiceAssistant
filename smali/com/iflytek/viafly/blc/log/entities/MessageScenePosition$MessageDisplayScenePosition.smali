.class public final enum Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;
.super Ljava/lang/Enum;
.source "MessageScenePosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageDisplayScenePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

.field public static final enum notify_bar:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

.field public static final enum notify_pop_windows:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    const-string/jumbo v1, "notify_bar"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;->notify_bar:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    .line 26
    new-instance v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    const-string/jumbo v1, "notify_pop_windows"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;->notify_pop_windows:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;->notify_bar:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;->notify_pop_windows:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;->$VALUES:[Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;->$VALUES:[Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    return-object v0
.end method
