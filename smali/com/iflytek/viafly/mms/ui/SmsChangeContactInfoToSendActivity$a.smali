.class final Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;
.super Landroid/content/AsyncQueryHandler;
.source "SmsChangeContactInfoToSendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    .line 157
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 162
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 164
    :pswitch_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v0, p3}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->b(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;Landroid/database/Cursor;)V

    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    new-instance v1, Laow;

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->c(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->d(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Laow;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;Laow;)Laow;

    .line 172
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->f(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->e(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Laow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
