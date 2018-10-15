.class Lcom/iflytek/framework/business/components/CommonComponents$5;
.super Ljava/lang/Object;
.source "CommonComponents.java"

# interfaces
.implements Lno$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/CommonComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/CommonComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/CommonComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/CommonComponents;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/iflytek/framework/business/components/CommonComponents$5;->this$0:Lcom/iflytek/framework/business/components/CommonComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadError(ILandroid/content/Intent;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 666
    const-string/jumbo v3, "Business_CommonComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "downloadError, errorCode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    if-eqz p2, :cond_1

    .line 668
    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    .line 669
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 670
    .local v1, "type":I
    const-string/jumbo v3, "url"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "Business_CommonComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "downloadError, type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const v0, 0x493e2

    .line 673
    .local v0, "error":I
    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    .line 674
    const-string/jumbo v3, "Business_CommonComponents"

    const-string/jumbo v4, "downloadError, onShareFail, PIC_GET_ERROR"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/16 v3, 0x385

    if-ne v3, p1, :cond_0

    .line 676
    const v0, 0x493e4

    .line 678
    :cond_0
    iget-object v3, p0, Lcom/iflytek/framework/business/components/CommonComponents$5;->this$0:Lcom/iflytek/framework/business/components/CommonComponents;

    const-string/jumbo v4, "fail"

    invoke-static {v3, v0, v4}, Lcom/iflytek/framework/business/components/CommonComponents;->access$300(Lcom/iflytek/framework/business/components/CommonComponents;ILjava/lang/String;)V

    .line 679
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v3

    invoke-virtual {v3, v2}, Lno;->d(Ljava/lang/String;)V

    .line 682
    .end local v0    # "error":I
    .end local v1    # "type":I
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 8
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 643
    const-string/jumbo v4, "Business_CommonComponents"

    const-string/jumbo v5, "downloadStatusChanged"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    if-eqz p1, :cond_0

    .line 645
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "type"

    .line 647
    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 648
    .local v2, "type":I
    const-string/jumbo v4, "Business_CommonComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "downloadStatusChanged, action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string/jumbo v4, "file_path"

    .line 650
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "filePath":Ljava/lang/String;
    const-string/jumbo v4, "url"

    .line 652
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, "url":Ljava/lang/String;
    const/16 v4, 0x10

    if-ne v2, v4, :cond_0

    .line 654
    const-string/jumbo v4, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 655
    iget-object v4, p0, Lcom/iflytek/framework/business/components/CommonComponents$5;->this$0:Lcom/iflytek/framework/business/components/CommonComponents;

    const-string/jumbo v5, "success"

    invoke-static {v4, v7, v5}, Lcom/iflytek/framework/business/components/CommonComponents;->access$300(Lcom/iflytek/framework/business/components/CommonComponents;ILjava/lang/String;)V

    .line 657
    iget-object v4, p0, Lcom/iflytek/framework/business/components/CommonComponents$5;->this$0:Lcom/iflytek/framework/business/components/CommonComponents;

    invoke-static {v4, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->access$400(Lcom/iflytek/framework/business/components/CommonComponents;Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v4

    invoke-virtual {v4, v3}, Lno;->d(Ljava/lang/String;)V

    .line 662
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "type":I
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 687
    return-void
.end method
