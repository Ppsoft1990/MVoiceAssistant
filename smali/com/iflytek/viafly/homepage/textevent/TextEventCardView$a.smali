.class Lcom/iflytek/viafly/homepage/textevent/TextEventCardView$a;
.super Landroid/os/Handler;
.source "TextEventCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView$a;->a:Ljava/lang/ref/WeakReference;

    .line 175
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 179
    const-string/jumbo v2, "TextEventCardView"

    const-string/jumbo v3, "\u63a5\u6536\u5230\u5b9a\u65f6\u6d88\u606f"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;

    .line 181
    .local v0, "outer":Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;
    if-eqz v0, :cond_0

    .line 182
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 183
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->a(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)I

    move-result v2

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->b(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->a(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;II)I

    move-result v2

    invoke-static {v0, v2}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->a(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;I)I

    .line 184
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->c(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->a(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamd;

    .line 185
    .local v1, "textEvent":Lamd;
    if-eqz v1, :cond_0

    .line 186
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->d(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->a()V

    .line 187
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->d(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

    move-result-object v2

    invoke-virtual {v1}, Lamd;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->e(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)V

    .line 201
    .end local v1    # "textEvent":Lamd;
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 191
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->c(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->a(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamd;

    .line 192
    .restart local v1    # "textEvent":Lamd;
    if-eqz v1, :cond_0

    .line 193
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->d(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->a()V

    .line 194
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->f(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->d(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;

    move-result-object v2

    invoke-virtual {v1}, Lamd;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/homepage/textevent/view/AutoVerticalScrollTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    .end local v1    # "textEvent":Lamd;
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 198
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;->f(Lcom/iflytek/viafly/homepage/textevent/TextEventCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
