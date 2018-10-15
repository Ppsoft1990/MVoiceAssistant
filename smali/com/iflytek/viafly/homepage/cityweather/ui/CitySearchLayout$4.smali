.class Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$4;
.super Ljava/lang/Object;
.source "CitySearchLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 212
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$4;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 226
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 216
    const-string/jumbo v0, "CitySearchLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScrollStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$4;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->a(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$4;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->a(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 219
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$4;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->a(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 220
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$4;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->i(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout$4;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;->a(Lcom/iflytek/viafly/homepage/cityweather/ui/CitySearchLayout;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 222
    :cond_0
    return-void
.end method
