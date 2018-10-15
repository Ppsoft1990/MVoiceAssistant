.class Lavh$2;
.super Ljava/lang/Object;
.source "ScheduleTriggerHandler.java"

# interfaces
.implements Loe$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavh;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lavh;


# direct methods
.method constructor <init>(Lavh;)V
    .locals 0
    .param p1, "this$0"    # Lavh;

    .prologue
    .line 403
    iput-object p1, p0, Lavh$2;->a:Lavh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 1
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 408
    iget-object v0, p0, Lavh$2;->a:Lavh;

    invoke-virtual {v0}, Lavh;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lavh$2;->a:Lavh;

    invoke-virtual {v0}, Lavh;->e()V

    .line 411
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/common/notice/NotificationParam;I)V
    .locals 0
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;
    .param p2, "btnResId"    # I

    .prologue
    .line 422
    return-void
.end method

.method public b(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 1
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 416
    iget-object v0, p0, Lavh$2;->a:Lavh;

    invoke-virtual {v0}, Lavh;->d()V

    .line 417
    return-void
.end method
