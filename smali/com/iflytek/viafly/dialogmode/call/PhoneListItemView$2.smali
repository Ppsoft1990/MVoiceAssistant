.class Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$2;
.super Ljava/lang/Object;
.source "PhoneListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a(ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/common/adaptation/entity/SimCard;Ljava/util/List;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$2;->b:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    iput-object p2, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 193
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$2;->b:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$2;->b:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b()V

    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$2;->b:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    const-string/jumbo v1, "card2"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$2;->b:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    iget-object v1, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->b(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView$2;->b:Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;->a(Lcom/iflytek/viafly/dialogmode/call/PhoneListItemView;ZZ)V

    .line 199
    return-void
.end method
