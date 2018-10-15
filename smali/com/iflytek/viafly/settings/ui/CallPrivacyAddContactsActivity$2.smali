.class Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$2;
.super Ljava/lang/Object;
.source "CallPrivacyAddContactsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$2;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$2;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v1, v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$400(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 225
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 219
    return-void
.end method
