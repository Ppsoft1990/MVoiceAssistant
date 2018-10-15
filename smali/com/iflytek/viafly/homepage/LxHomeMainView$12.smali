.class Lcom/iflytek/viafly/homepage/LxHomeMainView$12;
.super Ljava/lang/Object;
.source "LxHomeMainView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/LxHomeMainView;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeMainView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$12;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1486
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$12;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->c(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 1487
    invoke-static {}, Lmz;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1488
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, "bind by local"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$12;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/account/ui/BindActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1491
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1492
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$12;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1497
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    invoke-static {}, Lmz;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1494
    const-string/jumbo v1, "LxHomeMainView"

    const-string/jumbo v2, "bind by sdk"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    invoke-static {}, Laoi;->a()Laoi;

    move-result-object v1

    invoke-virtual {v1}, Laoi;->c()V

    goto :goto_0
.end method
