.class final Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;
.super Ljava/lang/Object;
.source "INotificationManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field a:Landroid/graphics/Rect;

.field b:Landroid/app/PendingIntent;

.field final synthetic c:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/graphics/Rect;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;->c:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object p2, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;->a:Landroid/graphics/Rect;

    .line 629
    iput-object p3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$b;->b:Landroid/app/PendingIntent;

    .line 630
    return-void
.end method
