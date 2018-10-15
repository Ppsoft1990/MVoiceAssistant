.class Lcom/iflytek/viafly/contacts/AddNumberItemView$1;
.super Ljava/lang/Object;
.source "AddNumberItemView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/contacts/AddNumberItemView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/contacts/AddNumberItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/contacts/AddNumberItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/contacts/AddNumberItemView;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView$1;->a:Lcom/iflytek/viafly/contacts/AddNumberItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView$1;->a:Lcom/iflytek/viafly/contacts/AddNumberItemView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/contacts/AddNumberItemView;->a(Lcom/iflytek/viafly/contacts/AddNumberItemView;Z)Z

    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView$1;->a:Lcom/iflytek/viafly/contacts/AddNumberItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/contacts/AddNumberItemView;->a(Lcom/iflytek/viafly/contacts/AddNumberItemView;)Lcom/iflytek/viafly/contacts/AddNumberItemView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/viafly/contacts/AddNumberItemView$a;->a()V

    .line 52
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 46
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 40
    return-void
.end method
