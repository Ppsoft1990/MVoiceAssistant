.class Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;
.super Ljava/lang/Object;
.source "HomeWeatherCardView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x7f020273

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 253
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 255
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lajw;

    if-eqz v2, :cond_0

    .line 256
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lajw;

    .line 257
    .local v1, "cityArea":Lajw;
    if-eqz v1, :cond_0

    .line 258
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2, v1}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;Lajw;)Lajw;

    .line 259
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->c(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1, v4}, Lajo;->a(Lajw;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->c(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->c(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "#313955"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->d(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02025c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 270
    .end local v1    # "cityArea":Lajw;
    :pswitch_2
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;Lajw;)Lajw;

    .line 271
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->e(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->c(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->c(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "#FF0E0E"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->c(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "\u5b9a\u4f4d\u5931\u8d25"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->d(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02025d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->f(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->g(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 285
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lajx;

    if-eqz v2, :cond_0

    .line 286
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lajx;

    .line 287
    .local v0, "cardData":Lajx;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->h(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Lajw;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->a(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;Lajx;Lajw;)V

    goto/16 :goto_0

    .line 292
    .end local v0    # "cardData":Lajx;
    :pswitch_4
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->e(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->f(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$2;->a:Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;->g(Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
