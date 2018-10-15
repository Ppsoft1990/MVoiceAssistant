.class Lcom/iflytek/framework/business/components/PayComponents$2;
.super Landroid/os/Handler;
.source "PayComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/PayComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/PayComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/PayComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/PayComponents;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/iflytek/framework/business/components/PayComponents$2;->this$0:Lcom/iflytek/framework/business/components/PayComponents;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 119
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 121
    :pswitch_0
    new-instance v0, Laqu;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Laqu;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "payResult":Laqu;
    invoke-virtual {v0}, Laqu;->b()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "resultInfo":Ljava/lang/String;
    invoke-virtual {v0}, Laqu;->a()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "resultStatus":Ljava/lang/String;
    const-string/jumbo v3, "9000"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    iget-object v3, p0, Lcom/iflytek/framework/business/components/PayComponents$2;->this$0:Lcom/iflytek/framework/business/components/PayComponents;

    invoke-static {v3}, Lcom/iflytek/framework/business/components/PayComponents;->access$100(Lcom/iflytek/framework/business/components/PayComponents;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v3

    const-string/jumbo v4, "\u6d41\u91cf\u5145\u503c"

    iget-object v5, p0, Lcom/iflytek/framework/business/components/PayComponents$2;->this$0:Lcom/iflytek/framework/business/components/PayComponents;

    .line 132
    invoke-static {v5}, Lcom/iflytek/framework/business/components/PayComponents;->access$100(Lcom/iflytek/framework/business/components/PayComponents;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 131
    invoke-virtual {v3, v4, v5, v6}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v3, p0, Lcom/iflytek/framework/business/components/PayComponents$2;->this$0:Lcom/iflytek/framework/business/components/PayComponents;

    invoke-virtual {v3}, Lcom/iflytek/framework/business/components/PayComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u652f\u4ed8\u6210\u529f"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 143
    :cond_2
    const-string/jumbo v3, "8000"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    iget-object v3, p0, Lcom/iflytek/framework/business/components/PayComponents$2;->this$0:Lcom/iflytek/framework/business/components/PayComponents;

    invoke-virtual {v3}, Lcom/iflytek/framework/business/components/PayComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    :cond_3
    const-string/jumbo v3, "6001"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/iflytek/framework/business/components/PayComponents$2;->this$0:Lcom/iflytek/framework/business/components/PayComponents;

    invoke-virtual {v3}, Lcom/iflytek/framework/business/components/PayComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
