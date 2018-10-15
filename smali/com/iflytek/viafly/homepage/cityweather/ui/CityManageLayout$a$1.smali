.class Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;
.super Ljava/lang/Object;
.source "CityManageLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lajw;

.field final synthetic b:I

.field final synthetic c:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;Lajw;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->c:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    iput-object p2, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->a:Lajw;

    iput p3, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 173
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;->c:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;

    iget-object v1, v1, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a;->b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;->c(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v1, "\u786e\u8ba4\u5220\u9664\u57ce\u5e02\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$2;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$2;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V

    .line 175
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u786e\u8ba4"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$1;-><init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;)V

    .line 181
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 200
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 201
    invoke-virtual {v1, v2, v5, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 202
    return-void
.end method
