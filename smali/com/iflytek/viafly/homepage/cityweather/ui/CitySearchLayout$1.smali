.class Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;
.super Ljava/lang/Object;
.source "CitySearchLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->a(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->a(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    const-string/jumbo v0, "CitySearchLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afterTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->b(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->b(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const-string/jumbo v0, "CitySearchLayout"

    const-string/jumbo v1, "afterTextChanged: clear city list"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->c(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->d(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->e(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Lajn;

    move-result-object v0

    invoke-virtual {v0}, Lajn;->notifyDataSetChanged()V

    .line 128
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->f(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->c(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->g(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    iget-object v0, v0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->g(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->g(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 109
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 114
    return-void
.end method
