.class Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$3;
.super Ljava/lang/Object;
.source "SmsAddContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$3;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 531
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$3;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 532
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$3;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 533
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$3;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 534
    const/4 v0, 0x0

    return v0
.end method
