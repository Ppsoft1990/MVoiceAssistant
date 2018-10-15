.class Lavh$3;
.super Ljava/lang/Object;
.source "ScheduleTriggerHandler.java"

# interfaces
.implements Loe$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavh;->g()V
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
    .line 461
    iput-object p1, p0, Lavh$3;->a:Lavh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 1
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 465
    iget-object v0, p0, Lavh$3;->a:Lavh;

    invoke-static {v0}, Lavh;->a(Lavh;)Z

    .line 466
    iget-object v0, p0, Lavh$3;->a:Lavh;

    invoke-static {v0}, Lavh;->b(Lavh;)V

    .line 467
    iget-object v0, p0, Lavh$3;->a:Lavh;

    invoke-static {v0}, Lavh;->c(Lavh;)Lavc;

    move-result-object v0

    invoke-virtual {v0}, Lavc;->c()V

    .line 468
    return-void
.end method

.method public a(Lcom/iflytek/common/notice/NotificationParam;I)V
    .locals 0
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;
    .param p2, "btnResId"    # I

    .prologue
    .line 480
    return-void
.end method

.method public b(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 1
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 473
    iget-object v0, p0, Lavh$3;->a:Lavh;

    invoke-static {v0}, Lavh;->b(Lavh;)V

    .line 474
    iget-object v0, p0, Lavh$3;->a:Lavh;

    invoke-static {v0}, Lavh;->c(Lavh;)Lavc;

    move-result-object v0

    invoke-virtual {v0}, Lavc;->c()V

    .line 475
    return-void
.end method
