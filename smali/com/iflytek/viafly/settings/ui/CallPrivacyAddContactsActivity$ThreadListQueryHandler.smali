.class final Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallPrivacyAddContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .line 414
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 415
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    .line 419
    packed-switch p1, :pswitch_data_0

    .line 437
    :goto_0
    return-void

    .line 421
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0, p3}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$502(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 423
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$500(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$600(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Landroid/database/Cursor;)V

    .line 425
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$800(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$700(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->setContactItems(Ljava/util/List;)V

    .line 426
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$800(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ContactNameAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$900(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$200(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 431
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$ThreadListQueryHandler;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0, v4}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$002(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Z)Z

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
