.class Lade$2;
.super Landroid/os/Handler;
.source "WidgetSmsInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lade;


# direct methods
.method constructor <init>(Lade;)V
    .locals 0
    .param p1, "this$0"    # Lade;

    .prologue
    .line 205
    iput-object p1, p0, Lade$2;->a:Lade;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 208
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 236
    :goto_0
    return-void

    .line 210
    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 211
    iget-object v2, p0, Lade$2;->a:Lade;

    invoke-static {v2}, Lade;->c(Lade;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v2, p0, Lade$2;->a:Lade;

    invoke-static {v2}, Lade;->d(Lade;)V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v2, p0, Lade$2;->a:Lade;

    invoke-static {v2}, Lade;->c(Lade;)V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v2, p0, Lade$2;->a:Lade;

    invoke-static {v2}, Lade;->e(Lade;)V

    goto :goto_0

    .line 223
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 224
    .local v0, "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lade$2;->a:Lade;

    invoke-static {v2}, Lade;->b(Lade;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_EDIT_WHAT"

    const-string/jumbo v3, "EDIT_CONTACTS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string/jumbo v2, "com.iflytek.cmcc.EXTRA_CONTACT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 227
    const-string/jumbo v2, "EXTRA_NAME_TYPE"

    iget-object v3, p0, Lade$2;->a:Lade;

    invoke-static {v3}, Lade;->f(Lade;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    const-string/jumbo v2, "All_CONTACT_TYPE"

    iget-object v3, p0, Lade$2;->a:Lade;

    invoke-static {v3}, Lade;->g(Lade;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    iget-object v2, p0, Lade$2;->a:Lade;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsAddContactsActivity;->setInputView(Lade;)V

    .line 231
    iget-object v2, p0, Lade$2;->a:Lade;

    invoke-static {v2}, Lade;->b(Lade;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
