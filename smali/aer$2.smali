.class Laer$2;
.super Ljava/lang/Object;
.source "PhoneListMsgItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laer;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laer;


# direct methods
.method constructor <init>(Laer;)V
    .locals 0
    .param p1, "this$0"    # Laer;

    .prologue
    .line 137
    iput-object p1, p0, Laer$2;->a:Laer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Laer$2;->a:Laer;

    invoke-static {v0}, Laer;->a(Laer;)V

    .line 141
    iget-object v0, p0, Laer$2;->a:Laer;

    invoke-static {v0}, Laer;->b(Laer;)Ladd;

    move-result-object v0

    const-string/jumbo v1, "cancel"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ladd;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 142
    return-void
.end method
