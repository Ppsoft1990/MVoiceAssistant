.class final enum Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;
.super Ljava/lang/Enum;
.source "INotificationManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RemoteViewsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

.field public static final enum BIG_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

.field public static final enum CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

.field public static final enum HEAD_UP_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

.field public static final enum TICKER_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 395
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    const-string/jumbo v1, "CONTENT_VIEW"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    .line 396
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    const-string/jumbo v1, "BIG_CONTENT_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->BIG_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    .line 397
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    const-string/jumbo v1, "TICKER_VIEW"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->TICKER_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    .line 398
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    const-string/jumbo v1, "HEAD_UP_CONTENT_VIEW"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->HEAD_UP_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    .line 394
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->BIG_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->TICKER_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->HEAD_UP_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->$VALUES:[Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

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
    .line 394
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 394
    const-class v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->$VALUES:[Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    invoke-virtual {v0}, [Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$RemoteViewsType;

    return-object v0
.end method
