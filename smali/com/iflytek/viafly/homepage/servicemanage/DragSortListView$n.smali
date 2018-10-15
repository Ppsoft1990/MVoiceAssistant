.class Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation


# instance fields
.field private a:F

.field protected b:J

.field final synthetic c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;FI)V
    .locals 4
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1139
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    iput p2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->d:F

    .line 1141
    int-to-float v0, p3

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->a:F

    .line 1142
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->d:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->d:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->h:F

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->e:F

    .line 1143
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->d:F

    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->d:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->f:F

    .line 1144
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->d:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->g:F

    .line 1145
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 3
    .param p1, "frac"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1148
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->d:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1149
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->e:F

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 1153
    :goto_0
    return v0

    .line 1150
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->d:F

    sub-float v0, v2, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1151
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->f:F

    iget v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->g:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    goto :goto_0

    .line 1153
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->h:F

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 1170
    return-void
.end method

.method public a(FF)V
    .locals 0
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1174
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1178
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->b:J

    .line 1159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->i:Z

    .line 1160
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->a()V

    .line 1161
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 1162
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->i:Z

    .line 1166
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1182
    iget-boolean v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->i:Z

    if-eqz v1, :cond_0

    .line 1195
    :goto_0
    return-void

    .line 1186
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->b:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->a:F

    div-float v0, v1, v2

    .line 1188
    .local v0, "fraction":F
    cmpl-float v1, v0, v6

    if-ltz v1, :cond_1

    .line 1189
    invoke-virtual {p0, v6, v6}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->a(FF)V

    .line 1190
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->b()V

    goto :goto_0

    .line 1192
    :cond_1
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->a(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->a(FF)V

    .line 1193
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$n;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
