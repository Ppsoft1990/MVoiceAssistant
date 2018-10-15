.class Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$2;
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
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

.field final synthetic b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V
    .locals 0
    .param p1, "this$2"    # Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$2;->b:Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1;

    iput-object p2, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$2;->a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/cityweather/ui/CityManageLayout$a$1$2;->a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 179
    return-void
.end method
