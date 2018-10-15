.class Lcom/iflytek/viafly/contacts/AddNumberItemView$2;
.super Ljava/lang/Object;
.source "AddNumberItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 56
    iput-object p1, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView$2;->a:Lcom/iflytek/viafly/contacts/AddNumberItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView$2;->a:Lcom/iflytek/viafly/contacts/AddNumberItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/contacts/AddNumberItemView;->a(Lcom/iflytek/viafly/contacts/AddNumberItemView;)Lcom/iflytek/viafly/contacts/AddNumberItemView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView$2;->a:Lcom/iflytek/viafly/contacts/AddNumberItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/contacts/AddNumberItemView;->a(Lcom/iflytek/viafly/contacts/AddNumberItemView;)Lcom/iflytek/viafly/contacts/AddNumberItemView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/contacts/AddNumberItemView$2;->a:Lcom/iflytek/viafly/contacts/AddNumberItemView;

    invoke-static {v1}, Lcom/iflytek/viafly/contacts/AddNumberItemView;->b(Lcom/iflytek/viafly/contacts/AddNumberItemView;)Lcom/iflytek/viafly/contacts/AddNumberItemView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/contacts/AddNumberItemView$a;->a(Lcom/iflytek/viafly/contacts/AddNumberItemView;)V

    .line 64
    :cond_0
    return-void
.end method
