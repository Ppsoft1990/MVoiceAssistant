.class final Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;
.super Ljava/lang/Object;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Rect;

.field b:Landroid/app/PendingIntent;

.field final synthetic c:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;Landroid/graphics/Rect;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;->c:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1333
    iput-object p2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;->a:Landroid/graphics/Rect;

    .line 1334
    iput-object p3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;->b:Landroid/app/PendingIntent;

    .line 1335
    return-void
.end method
