.class final Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$7;
.super Ljava/util/TimerTask;
.source "SmsAddContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->showSoftInput(Landroid/content/Context;Landroid/widget/EditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$7;->a:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$7;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 689
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$7;->a:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$7;->b:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 690
    return-void
.end method
