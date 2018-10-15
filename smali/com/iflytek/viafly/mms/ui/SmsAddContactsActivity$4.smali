.class Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$4;
.super Ljava/lang/Object;
.source "SmsAddContactsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 539
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity$4;->a:Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 543
    const-string/jumbo v0, "SmsAddContactsActivity"

    const-string/jumbo v1, "-------------->>>setOnEditorActionListener()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 552
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
