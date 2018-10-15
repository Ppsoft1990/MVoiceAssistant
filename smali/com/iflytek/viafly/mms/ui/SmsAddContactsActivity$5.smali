.class Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$5;
.super Ljava/lang/Object;
.source "SmsAddContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 557
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$5;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 561
    const/16 v1, 0x43

    if-ne p2, v1, :cond_0

    .line 562
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$5;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1400(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 564
    .local v0, "s":Landroid/text/Editable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$5;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->access$1500(Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;)Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->d()V

    .line 569
    .end local v0    # "s":Landroid/text/Editable;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
