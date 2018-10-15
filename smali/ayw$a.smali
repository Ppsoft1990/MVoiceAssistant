.class Layw$a;
.super Ljava/lang/Object;
.source "TranslateResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Layw;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Layw;II)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "action"    # I

    .prologue
    .line 162
    iput-object p1, p0, Layw$a;->a:Layw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p2, p0, Layw$a;->b:I

    .line 164
    iput p3, p0, Layw$a;->c:I

    .line 165
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v1, p0, Layw$a;->a:Layw;

    invoke-static {v1}, Layw;->a(Layw;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Layw$a;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 171
    .local v0, "item":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    iget v1, p0, Layw$a;->c:I

    packed-switch v1, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v1, p0, Layw$a;->a:Layw;

    invoke-static {v1}, Layw;->b(Layw;)Layw$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Layw$a;->a:Layw;

    invoke-static {v1}, Layw;->b(Layw;)Layw$c;

    move-result-object v1

    iget v2, p0, Layw$a;->b:I

    invoke-interface {v1, v2}, Layw$c;->e(I)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v1, p0, Layw$a;->a:Layw;

    iget v2, p0, Layw$a;->b:I

    invoke-static {v1, v2}, Layw;->a(Layw;I)I

    .line 182
    const-string/jumbo v1, "TranslateResultAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Layw$a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Layw$a;->a:Layw;

    invoke-static {v1}, Layw;->b(Layw;)Layw$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Layw$a;->a:Layw;

    invoke-virtual {v1}, Layw;->notifyDataSetChanged()V

    .line 187
    iget-object v1, p0, Layw$a;->a:Layw;

    invoke-static {v1}, Layw;->b(Layw;)Layw$c;

    move-result-object v1

    iget v2, p0, Layw$a;->b:I

    invoke-interface {v1, v2}, Layw$c;->f(I)V

    goto :goto_0

    .line 192
    :pswitch_2
    const-string/jumbo v1, "TranslateResultAdapter"

    const-string/jumbo v2, "onClick: report error"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Layw$a;->a:Layw;

    invoke-static {v1}, Layw;->b(Layw;)Layw$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Layw$a;->a:Layw;

    invoke-static {v1}, Layw;->b(Layw;)Layw$c;

    move-result-object v1

    iget v2, p0, Layw$a;->b:I

    invoke-interface {v1, v2}, Layw$c;->h(I)V

    goto :goto_0

    .line 199
    :pswitch_3
    const-string/jumbo v1, "TranslateResultAdapter"

    const-string/jumbo v2, "onClick: share"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Layw$a;->a:Layw;

    invoke-static {v1}, Layw;->b(Layw;)Layw$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Layw$a;->a:Layw;

    invoke-static {v1}, Layw;->b(Layw;)Layw$c;

    move-result-object v1

    iget v2, p0, Layw$a;->b:I

    invoke-interface {v1, v2}, Layw$c;->i(I)V

    goto/16 :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
