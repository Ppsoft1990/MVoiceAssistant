.class public Lafp;
.super Ljava/lang/Object;
.source "MusicMessageItemDelegate.java"

# interfaces
.implements Ladv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f030065

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 9
    .param p1, "viewHolder"    # Lady;
    .param p2, "chatMessage"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 47
    instance-of v7, p2, Lafo;

    if-eqz v7, :cond_0

    move-object v3, p2

    .line 48
    check-cast v3, Lafo;

    .line 49
    .local v3, "leftMessage":Lafo;
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b0316

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 50
    .local v4, "parent":Landroid/widget/LinearLayout;
    new-instance v7, Lafp$1;

    invoke-direct {v7, p0, v3}, Lafp$1;-><init>(Lafp;Lafo;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b0317

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 67
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v7, v3, Lafo;->a:Ljava/lang/String;

    invoke-static {v2, v7}, Laqc;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b0318

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 70
    .local v6, "titleView":Landroid/widget/TextView;
    iget-object v7, v3, Lafo;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b0319

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    .local v1, "artistView":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u6b4c\u624b  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lafo;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b031a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, "albumView":Landroid/widget/TextView;
    iget-object v7, v3, Lafo;->f:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :goto_0
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0b031b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 81
    .local v5, "sourceView":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u6765\u6e90  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lafo;->h:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .end local v0    # "albumView":Landroid/widget/TextView;
    .end local v1    # "artistView":Landroid/widget/TextView;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "leftMessage":Lafo;
    .end local v4    # "parent":Landroid/widget/LinearLayout;
    .end local v5    # "sourceView":Landroid/widget/TextView;
    .end local v6    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 77
    .restart local v0    # "albumView":Landroid/widget/TextView;
    .restart local v1    # "artistView":Landroid/widget/TextView;
    .restart local v2    # "imageView":Landroid/widget/ImageView;
    .restart local v3    # "leftMessage":Lafo;
    .restart local v4    # "parent":Landroid/widget/LinearLayout;
    .restart local v6    # "titleView":Landroid/widget/TextView;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u4e13\u8f91  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lafo;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 33
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Lafp;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 88
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 42
    instance-of v0, p1, Lafo;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 33
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Lafp;->a(Laee;)Z

    move-result v0

    return v0
.end method
