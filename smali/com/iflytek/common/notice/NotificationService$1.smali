.class Lcom/iflytek/common/notice/NotificationService$1;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Lcom/iflytek/yd/base/ProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/notice/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/notice/NotificationService;


# direct methods
.method constructor <init>(Lcom/iflytek/common/notice/NotificationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/notice/NotificationService;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/iflytek/common/notice/NotificationService$1;->a:Lcom/iflytek/common/notice/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessRestart()Z
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "onProcessRestart(), return false"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    return v0
.end method
