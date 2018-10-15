.class Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;
.super Ljava/lang/Object;
.source "CityManageLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    const-string/jumbo v1, "CityManageLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDelete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    iget-object v3, v3, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->a:Lajw;

    invoke-virtual {v3}, Lajw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->c:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->b(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    iget v2, v2, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 186
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->c:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->a(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->notifyDataSetChanged()V

    .line 188
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->c:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->b(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lajo;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "cityAreas":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_CITYS_DATA"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->c:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    iget-object v2, v2, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->a:Lajw;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->a(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;Lajw;)V

    .line 195
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->c:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->b(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->c:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->b(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->c:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->d(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :cond_0
    return-void
.end method
