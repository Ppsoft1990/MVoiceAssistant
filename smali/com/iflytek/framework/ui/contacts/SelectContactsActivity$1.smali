.class Lcom/iflytek/framework/ui/contacts/SelectContactsActivity$1;
.super Ljava/lang/Object;
.source "SelectContactsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity$1;->this$0:Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity$1;->this$0:Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;

    invoke-static {v1}, Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;->access$000(Lcom/iflytek/framework/ui/contacts/SelectContactsActivity;)Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/mms/ui/ContactEditPanelView;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SelectContactsActivity"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
