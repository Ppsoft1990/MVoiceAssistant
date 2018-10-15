.class final Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;
.super Landroid/content/AsyncQueryHandler;
.source "SmsAddContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .line 348
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 349
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 353
    packed-switch p1, :pswitch_data_0

    .line 377
    :goto_0
    return-void

    .line 356
    :pswitch_0
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$000(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 361
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v0, p3}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$102(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 363
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$100(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$200(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Landroid/database/Cursor;)V

    .line 365
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 366
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$300(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Laox;

    move-result-object v0

    invoke-virtual {v0, p3}, Laox;->changeCursor(Landroid/database/Cursor;)V

    .line 368
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$500(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V

    .line 369
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$000(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$000(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 371
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v0, v4}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$602(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;Z)Z

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$a;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$000(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
