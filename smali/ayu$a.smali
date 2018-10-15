.class Layu$a;
.super Ljava/lang/Object;
.source "TextTranslateResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Layu;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Layu;II)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "action"    # I

    .prologue
    .line 130
    iput-object p1, p0, Layu$a;->a:Layu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p2, p0, Layu$a;->b:I

    .line 132
    iput p3, p0, Layu$a;->c:I

    .line 133
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v1, p0, Layu$a;->a:Layu;

    invoke-static {v1}, Layu;->a(Layu;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Layu$a;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 139
    .local v0, "item":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    iget v1, p0, Layu$a;->c:I

    packed-switch v1, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    iget-object v1, p0, Layu$a;->a:Layu;

    invoke-static {v1}, Layu;->b(Layu;)Layu$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Layu$a;->a:Layu;

    invoke-static {v1}, Layu;->b(Layu;)Layu$c;

    move-result-object v1

    iget v2, p0, Layu$a;->b:I

    invoke-interface {v1, v2}, Layu$c;->a(I)V

    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v1, p0, Layu$a;->a:Layu;

    iget v2, p0, Layu$a;->b:I

    invoke-static {v1, v2}, Layu;->a(Layu;I)I

    .line 150
    const-string/jumbo v1, "TextTranslateResultAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Layu$a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Layu$a;->a:Layu;

    invoke-static {v1}, Layu;->b(Layu;)Layu$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Layu$a;->a:Layu;

    invoke-virtual {v1}, Layu;->notifyDataSetChanged()V

    .line 155
    iget-object v1, p0, Layu$a;->a:Layu;

    invoke-static {v1}, Layu;->b(Layu;)Layu$c;

    move-result-object v1

    iget v2, p0, Layu$a;->b:I

    invoke-interface {v1, v2}, Layu$c;->b(I)V

    goto :goto_0

    .line 160
    :pswitch_3
    const-string/jumbo v1, "TextTranslateResultAdapter"

    const-string/jumbo v2, "onClick: share"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Layu$a;->a:Layu;

    invoke-static {v1}, Layu;->b(Layu;)Layu$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Layu$a;->a:Layu;

    invoke-static {v1}, Layu;->b(Layu;)Layu$c;

    move-result-object v1

    iget v2, p0, Layu$a;->b:I

    invoke-interface {v1, v2}, Layu$c;->d(I)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
