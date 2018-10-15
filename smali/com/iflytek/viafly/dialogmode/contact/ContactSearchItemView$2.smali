.class Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$2;
.super Ljava/lang/Object;
.source "ContactSearchItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->a(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$2;->c:Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;

    iput-object p2, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$2;->c:Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;

    const-string/jumbo v1, "startCall"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$2;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView$2;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;->a(Lcom/iflytek/viafly/dialogmode/contact/ContactSearchItemView;Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    return-void
.end method
