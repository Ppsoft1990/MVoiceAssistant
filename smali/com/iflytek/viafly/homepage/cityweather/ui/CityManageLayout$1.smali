.class Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$1;
.super Ljava/lang/Object;
.source "CityManageLayout.java"

# interfaces
.implements Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a_(II)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 100
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->a(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->a(I)Lajw;

    move-result-object v0

    .line 102
    .local v0, "cityArea":Lajw;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->a(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->remove(Ljava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->a(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->insert(Ljava/lang/Object;I)V

    .line 105
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$1;->a:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-static {v2}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->b(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lajo;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "cityAreas":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_CITYS_DATA"

    invoke-virtual {v2, v3, v1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method
