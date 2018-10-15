.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "setServiceForeground"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 920
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 886
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 887
    return-void
.end method

.method private a(F)I
    .locals 2
    .param p1, "dpValue"    # F

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1137
    .local v0, "mScale":F
    mul-float v1, p1, v0

    float-to-int v1, v1

    return v1
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 4
    .param p1, "rect1"    # Landroid/graphics/Rect;
    .param p2, "rect2"    # Landroid/graphics/Rect;

    .prologue
    .line 1317
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1318
    .local v0, "rect":Landroid/graphics/Rect;
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1319
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1320
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1321
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1322
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_0

    .line 1323
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    .line 1325
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;)I
    .locals 5
    .param p1, "pluginPkg"    # Ljava/lang/String;
    .param p2, "iconType"    # Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    .prologue
    .line 1387
    const-string/jumbo v2, "."

    const-string/jumbo v3, "_"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1388
    .local v0, "iconName":Ljava/lang/String;
    sget-object v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->c:[I

    invoke-virtual {p2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1398
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "drawable"

    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1399
    .local v1, "resId":I
    if-nez v1, :cond_0

    .line 1401
    const-string/jumbo v0, "gp_default_icon"

    .line 1402
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "drawable"

    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1405
    :cond_0
    return v1

    .line 1392
    .end local v1    # "resId":I
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_small"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1393
    goto :goto_0

    .line 1395
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_large"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/graphics/Rect;Ljava/util/List;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 1304
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;>;"
    const/4 v0, 0x0

    .line 1305
    .local v0, "maxArea":I
    const/4 v1, 0x0

    .line 1306
    .local v1, "maxIntent":Landroid/app/PendingIntent;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;

    .line 1307
    .local v2, "rectInfo":Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;
    iget-object v5, v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;->a:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v5}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    .line 1308
    .local v3, "size":I
    if-le v3, v0, :cond_0

    .line 1309
    move v0, v3

    .line 1310
    iget-object v1, v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;->b:Landroid/app/PendingIntent;

    goto :goto_0

    .line 1313
    .end local v2    # "rectInfo":Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;
    .end local v3    # "size":I
    :cond_1
    return-object v1
.end method

.method private a(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;)Landroid/widget/RemoteViews;
    .locals 8
    .param p1, "rvOld"    # Landroid/widget/RemoteViews;
    .param p2, "rvt"    # Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;

    .prologue
    const/4 v7, 0x1

    .line 1108
    if-nez p1, :cond_1

    .line 1109
    const/4 v2, 0x0

    .line 1132
    :cond_0
    :goto_0
    return-object v2

    .line 1113
    :cond_1
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v5, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->BIG_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;

    if-ne v5, p2, :cond_2

    sget v5, Lcom/iflytek/greenplug/R$layout;->notification_big:I

    :goto_1
    invoke-direct {v2, v6, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1117
    .local v2, "newRemoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, p2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->b(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;)Landroid/view/View;

    move-result-object v4

    .line 1118
    .local v4, "oldView":Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1119
    const/high16 v5, 0x100000

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 1120
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 1121
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1122
    .local v0, "bmp":Landroid/graphics/Bitmap;
    sget v5, Lcom/iflytek/greenplug/R$id;->ivContent:I

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1124
    sget v5, Lcom/iflytek/greenplug/R$id;->flAll:I

    const-string/jumbo v6, "setBackgroundColor"

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1127
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->c(Landroid/widget/RemoteViews;)Ljava/util/Map;

    move-result-object v1

    .line 1128
    .local v1, "clickIntents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    invoke-direct {p0, v2, p2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->b(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;)Landroid/view/View;

    move-result-object v3

    .line 1129
    .local v3, "newView":Landroid/view/View;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1130
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Ljava/util/Map;Landroid/widget/RemoteViews;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 1113
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "clickIntents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    .end local v2    # "newRemoteViews":Landroid/widget/RemoteViews;
    .end local v3    # "newView":Landroid/view/View;
    .end local v4    # "oldView":Landroid/view/View;
    :cond_2
    sget v5, Lcom/iflytek/greenplug/R$layout;->notification:I

    goto :goto_1
.end method

.method private a(Landroid/app/Notification;)Ljava/lang/String;
    .locals 13
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/16 v12, 0x17

    .line 1014
    const/4 v7, 0x0

    .line 1015
    .local v7, "pluginPkg":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v8, v7

    .line 1097
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .local v8, "pluginPkg":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 1019
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :cond_0
    iget-object v10, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v11}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1020
    iget-object v10, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 1021
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto :goto_0

    .line 1024
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_2

    .line 1025
    iget-object v10, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v11}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1026
    iget-object v10, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 1027
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto :goto_0

    .line 1030
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :cond_2
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_3

    .line 1031
    iget-object v10, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v11}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1032
    iget-object v10, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 1033
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto :goto_0

    .line 1036
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :cond_3
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_4

    .line 1037
    iget-object v10, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v11}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1038
    iget-object v10, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 1039
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1043
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :cond_4
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v12, :cond_5

    .line 1044
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 1045
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_5

    .line 1047
    :try_start_0
    const-string/jumbo v10, "mString1"

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v6

    .line 1048
    .local v6, "mString1Obj":Ljava/lang/Object;
    instance-of v10, v6, Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 1049
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 1050
    .local v5, "mString1":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_5

    .line 1051
    move-object v7, v5

    move-object v8, v7

    .line 1052
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1055
    .end local v5    # "mString1":Ljava/lang/String;
    .end local v6    # "mString1Obj":Ljava/lang/Object;
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1056
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "get smallIcon package fail"

    invoke-static {v10, v11, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1061
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :cond_5
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v12, :cond_6

    .line 1062
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 1063
    .restart local v3    # "icon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_6

    .line 1065
    :try_start_1
    const-string/jumbo v10, "mString1"

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v6

    .line 1066
    .restart local v6    # "mString1Obj":Ljava/lang/Object;
    instance-of v10, v6, Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 1067
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 1068
    .restart local v5    # "mString1":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-eqz v10, :cond_6

    .line 1069
    move-object v7, v5

    move-object v8, v7

    .line 1070
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1073
    .end local v5    # "mString1":Ljava/lang/String;
    .end local v6    # "mString1Obj":Ljava/lang/Object;
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1074
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "get largeIcon package fail"

    invoke-static {v10, v11, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1080
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :cond_6
    :try_start_2
    const-string/jumbo v10, "extras"

    const/4 v11, 0x1

    invoke-static {p1, v10, v11}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 1081
    .local v4, "mExtras":Landroid/os/Bundle;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    if-nez v10, :cond_9

    .line 1082
    :cond_7
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "mExtras or mExtras.keySet() is null"

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "mExtras":Landroid/os/Bundle;
    :cond_8
    :goto_1
    move-object v8, v7

    .line 1097
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1084
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .restart local v4    # "mExtras":Landroid/os/Bundle;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1085
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_a

    .line 1086
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1087
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1088
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v7

    .line 1089
    .end local v7    # "pluginPkg":Ljava/lang/String;
    .restart local v8    # "pluginPkg":Ljava/lang/String;
    goto/16 :goto_0

    .line 1094
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "mExtras":Landroid/os/Bundle;
    .end local v8    # "pluginPkg":Ljava/lang/String;
    .end local v9    # "s":Ljava/lang/String;
    .restart local v7    # "pluginPkg":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 1095
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "getPluginNotification error"

    invoke-static {v10, v11, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1271
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1272
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1280
    :goto_0
    return-void

    .line 1275
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1276
    .local v0, "viewParent":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1278
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1, p2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/RemoteViews;)V
    .locals 20
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 924
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 926
    sget-object v17, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 927
    const-string/jumbo v17, "mActions"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 928
    .local v12, "mActionsObj":Ljava/lang/Object;
    instance-of v0, v12, Ljava/util/Collection;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object v11, v12

    .line 929
    check-cast v11, Ljava/util/Collection;

    .line 930
    .local v11, "mActions":Ljava/util/Collection;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 931
    .local v6, "aPackage":Ljava/lang/String;
    invoke-static {v6}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->getPluginContext(Ljava/lang/String;)Landroid/app/Application;

    move-result-object v15

    .line 932
    .local v15, "pluginContent":Landroid/app/Application;
    if-eqz v15, :cond_6

    .line 933
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 934
    .local v10, "iterable":Ljava/util/Iterator;
    const/4 v5, 0x0

    .line 936
    .local v5, "TextViewDrawableActionClass":Ljava/lang/Class;
    :try_start_0
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 937
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-class v18, Landroid/widget/RemoteViews;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "$TextViewDrawableAction"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 941
    :cond_0
    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-class v18, Landroid/widget/RemoteViews;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "$ReflectionAction"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 942
    .local v4, "ReflectionActionClass":Ljava/lang/Class;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 943
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 944
    .local v7, "action":Ljava/lang/Object;
    invoke-virtual {v4, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 945
    const-string/jumbo v17, "methodName"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 947
    .local v13, "methodName":Ljava/lang/String;
    const-string/jumbo v17, "setImageResource"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 948
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string/jumbo v18, "BITMAP"

    invoke-static/range {v17 .. v18}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 949
    .local v3, "BITMAP":Ljava/lang/Object;
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 950
    .local v16, "resId":I
    invoke-virtual {v15}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 951
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 952
    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    invoke-static {v7, v0, v3}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 953
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-static {v7, v0, v8}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 954
    const-string/jumbo v17, "methodName"

    const-string/jumbo v18, "setImageBitmap"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v7, v0, v1}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 956
    .end local v3    # "BITMAP":Ljava/lang/Object;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "resId":I
    :cond_2
    const-string/jumbo v17, "setImageURI"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 957
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 958
    :cond_3
    const-string/jumbo v17, "setLabelFor"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 959
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 960
    :cond_4
    const-string/jumbo v17, "setImageIcon"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 961
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x17

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 962
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Icon;

    .line 963
    .local v9, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v9, :cond_1

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->NORMAL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;)I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v14

    .line 965
    .local v14, "newIcon":Landroid/graphics/drawable/Icon;
    const-string/jumbo v17, "value"

    move-object/from16 v0, v17

    invoke-static {v7, v0, v14}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 969
    .end local v9    # "icon":Landroid/graphics/drawable/Icon;
    .end local v13    # "methodName":Ljava/lang/String;
    .end local v14    # "newIcon":Landroid/graphics/drawable/Icon;
    :cond_5
    if-eqz v5, :cond_1

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 970
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 982
    .end local v4    # "ReflectionActionClass":Ljava/lang/Class;
    .end local v5    # "TextViewDrawableActionClass":Ljava/lang/Class;
    .end local v6    # "aPackage":Ljava/lang/String;
    .end local v7    # "action":Ljava/lang/Object;
    .end local v10    # "iterable":Ljava/util/Iterator;
    .end local v11    # "mActions":Ljava/util/Collection;
    .end local v12    # "mActionsObj":Ljava/lang/Object;
    .end local v15    # "pluginContent":Landroid/app/Application;
    :cond_6
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    .line 983
    const-string/jumbo v17, "mApplication"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 988
    :cond_7
    :goto_2
    return-void

    .line 985
    :cond_8
    const-string/jumbo v17, "mPackage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 939
    .restart local v5    # "TextViewDrawableActionClass":Ljava/lang/Class;
    .restart local v6    # "aPackage":Ljava/lang/String;
    .restart local v10    # "iterable":Ljava/util/Iterator;
    .restart local v11    # "mActions":Ljava/util/Collection;
    .restart local v12    # "mActionsObj":Ljava/lang/Object;
    .restart local v15    # "pluginContent":Landroid/app/Application;
    :catch_0
    move-exception v17

    goto/16 :goto_0
.end method

.method private a(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 7
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1283
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;>;"
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1284
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1285
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1286
    .local v4, "v":Landroid/view/View;
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 1287
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "v":Landroid/view/View;
    invoke-direct {p0, p1, v4, p3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 1284
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1288
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 1289
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1290
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1291
    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 1292
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 1295
    invoke-direct {p0, v3, p3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/graphics/Rect;Ljava/util/List;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1296
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 1297
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 1301
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/app/Notification;)V
    .locals 11
    .param p1, "pluginPkg"    # Ljava/lang/String;
    .param p2, "notification"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 1409
    if-eqz p2, :cond_7

    .line 1410
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hackNotification begin, pluginPkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", notification:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->b(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    sget-object v8, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->NORMAL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    invoke-direct {p0, p1, v8}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;)I

    move-result v8

    iput v8, p2, Landroid/app/Notification;->icon:I

    .line 1414
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_1

    .line 1415
    invoke-virtual {p2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 1416
    .local v7, "smallIcon":Landroid/graphics/drawable/Icon;
    if-eqz v7, :cond_0

    .line 1417
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->SMALL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    invoke-direct {p0, p1, v9}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;)I

    move-result v9

    invoke-static {v8, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 1418
    .local v5, "newIcon":Landroid/graphics/drawable/Icon;
    const-string/jumbo v8, "mSmallIcon"

    const/4 v9, 0x1

    invoke-static {p2, v8, v5, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1420
    const-string/jumbo v8, "icon"

    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->SMALL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    invoke-direct {p0, p1, v9}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p2, v8, v9, v10}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1423
    .end local v5    # "newIcon":Landroid/graphics/drawable/Icon;
    :cond_0
    invoke-virtual {p2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 1424
    .local v3, "largeIcon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_1

    .line 1425
    iget-object v8, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->LARGE:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    invoke-direct {p0, p1, v9}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;)I

    move-result v9

    invoke-static {v8, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 1426
    .restart local v5    # "newIcon":Landroid/graphics/drawable/Icon;
    const-string/jumbo v8, "mLargeIcon"

    const/4 v9, 0x1

    invoke-static {p2, v8, v5, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1430
    .end local v3    # "largeIcon":Landroid/graphics/drawable/Icon;
    .end local v5    # "newIcon":Landroid/graphics/drawable/Icon;
    .end local v7    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_2

    .line 1431
    iget-object v8, p2, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->b(Landroid/widget/RemoteViews;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1437
    :cond_2
    :goto_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_3

    .line 1438
    iget-object v8, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->b(Landroid/widget/RemoteViews;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1440
    iget-object v8, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v8}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v8

    iget-object v9, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v9}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v9

    if-ne v8, v9, :cond_9

    .line 1441
    const/4 v8, 0x0

    iput-object v8, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1449
    :cond_3
    :goto_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_4

    .line 1450
    iget-object v8, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->b(Landroid/widget/RemoteViews;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1451
    iget-object v8, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->HEAD_UP_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;

    invoke-direct {p0, v8, v9}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1456
    :cond_4
    :goto_2
    iget-object v8, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->b(Landroid/widget/RemoteViews;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1457
    iget-object v8, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;

    invoke-direct {p0, v8, v9}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1464
    :goto_3
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_6

    .line 1465
    const-string/jumbo v8, "extras"

    const/4 v9, 0x1

    invoke-static {p2, v8, v9}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 1466
    .local v4, "mExtras":Landroid/os/Bundle;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    if-nez v8, :cond_d

    .line 1467
    :cond_5
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "mExtras or mExtras.keySet() is null"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    .end local v4    # "mExtras":Landroid/os/Bundle;
    :cond_6
    :goto_4
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hackNotification end, pluginPkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", notification:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->b(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    :cond_7
    return-void

    .line 1434
    :cond_8
    iget-object v8, p2, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 1443
    :cond_9
    iget-object v8, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    sget-object v9, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->BIG_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;

    invoke-direct {p0, v8, v9}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto/16 :goto_1

    .line 1446
    :cond_a
    iget-object v8, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 1453
    :cond_b
    iget-object v8, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/widget/RemoteViews;)V

    goto :goto_2

    .line 1459
    :cond_c
    iget-object v8, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v8}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/widget/RemoteViews;)V

    goto :goto_3

    .line 1469
    .restart local v4    # "mExtras":Landroid/os/Bundle;
    :cond_d
    :try_start_1
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1470
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_f

    .line 1471
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1472
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 1473
    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1476
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_f
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_e

    .line 1477
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Landroid/graphics/drawable/Icon;

    if-eqz v9, :cond_e

    .line 1478
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    .line 1479
    .local v2, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v2, :cond_e

    .line 1480
    iget-object v9, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    sget-object v10, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->NORMAL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    invoke-direct {p0, p1, v10}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Ljava/lang/String;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;)I

    move-result v10

    invoke-static {v9, v10}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 1481
    .restart local v5    # "newIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 1488
    .end local v2    # "icon":Landroid/graphics/drawable/Icon;
    .end local v4    # "mExtras":Landroid/os/Bundle;
    .end local v5    # "newIcon":Landroid/graphics/drawable/Icon;
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1489
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "fix mExtras error"

    invoke-static {v8, v9, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4
.end method

.method private a(Ljava/util/Map;Landroid/widget/RemoteViews;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "newView"    # Landroid/view/View;
    .param p4, "oldView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/widget/RemoteViews;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1251
    .local p1, "intents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1253
    .local v3, "set":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/PendingIntent;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1254
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1255
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1256
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1257
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1258
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1259
    invoke-direct {p0, v4, v2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1260
    new-instance v6, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    invoke-direct {v6, p0, v2, v5}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$a;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;Landroid/graphics/Rect;Landroid/app/PendingIntent;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1265
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    instance-of v5, p3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 1266
    check-cast p3, Landroid/view/ViewGroup;

    .end local p3    # "newView":Landroid/view/View;
    invoke-direct {p0, p2, p3, v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 1268
    :cond_2
    return-void
.end method

.method private b(Landroid/widget/RemoteViews;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;)Landroid/view/View;
    .locals 18
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "rvt"    # Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;

    .prologue
    .line 1144
    const/4 v5, 0x0

    .line 1145
    .local v5, "height_default_dp":I
    sget-object v15, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 1167
    :goto_0
    const/4 v9, 0x0

    .line 1168
    .local v9, "systemDimenId":I
    const/4 v2, 0x0

    .line 1170
    .local v2, "contextSystemUI":Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    const-string/jumbo v16, "com.android.systemui"

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 1171
    const-string/jumbo v6, ""

    .line 1172
    .local v6, "height_name":Ljava/lang/String;
    sget-object v15, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_1

    .line 1184
    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string/jumbo v16, "dimen"

    const-string/jumbo v17, "com.android.systemui"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v6, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1188
    .end local v6    # "height_name":Ljava/lang/String;
    :goto_2
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x18

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v16, 0x18

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    const/4 v15, 0x1

    :goto_3
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1189
    .local v8, "isOldAPPinN":Ljava/lang/Boolean;
    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1190
    :cond_0
    int-to-float v15, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(F)I

    move-result v4

    .line 1198
    .local v4, "height":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    const-string/jumbo v16, "window"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 1199
    .local v14, "windowsManager":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    const/4 v7, 0x1

    .line 1200
    .local v7, "isLandscape":Z
    :goto_5
    if-eqz v7, :cond_7

    .line 1201
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getHeight()I

    move-result v13

    .line 1206
    .local v13, "width":I
    :goto_6
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 1207
    .local v10, "percent":D
    sget-object v15, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->b:[I

    invoke-static {}, Lcom/iflytek/greenplug/common/utils/OSUtils;->getInstance()Lcom/iflytek/greenplug/common/utils/OSUtils;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/greenplug/common/utils/OSUtils;->getOS()Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_2

    .line 1235
    :cond_1
    :goto_7
    :pswitch_0
    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-int v13, v0

    .line 1238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 1239
    .local v12, "view":Landroid/view/View;
    const/high16 v15, 0x40000000    # 2.0f

    .line 1240
    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    .line 1241
    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 1239
    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/view/View;->measure(II)V

    .line 1242
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0, v13, v4}, Landroid/view/View;->layout(IIII)V

    .line 1243
    return-object v12

    .line 1147
    .end local v2    # "contextSystemUI":Landroid/content/Context;
    .end local v4    # "height":I
    .end local v7    # "isLandscape":Z
    .end local v8    # "isOldAPPinN":Ljava/lang/Boolean;
    .end local v9    # "systemDimenId":I
    .end local v10    # "percent":D
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "width":I
    .end local v14    # "windowsManager":Landroid/view/WindowManager;
    :pswitch_1
    const/16 v5, 0x19

    .line 1148
    goto/16 :goto_0

    .line 1151
    :pswitch_2
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x18

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 1152
    const/16 v5, 0x40

    goto/16 :goto_0

    .line 1154
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->mHostContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v16, 0x18

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 1156
    const/16 v5, 0x40

    goto/16 :goto_0

    .line 1158
    :cond_3
    const/16 v5, 0x5c

    .line 1161
    goto/16 :goto_0

    .line 1163
    :pswitch_3
    const/16 v5, 0x100

    goto/16 :goto_0

    .line 1174
    .restart local v2    # "contextSystemUI":Landroid/content/Context;
    .restart local v6    # "height_name":Ljava/lang/String;
    .restart local v9    # "systemDimenId":I
    :pswitch_4
    :try_start_1
    const-string/jumbo v6, "status_bar_height"

    .line 1175
    goto/16 :goto_1

    .line 1178
    :pswitch_5
    const-string/jumbo v6, "notification_min_height"

    .line 1179
    goto/16 :goto_1

    .line 1181
    :pswitch_6
    const-string/jumbo v6, "notification_max_height"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1185
    .end local v6    # "height_name":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1186
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "createViewFromRemoteViews error"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1188
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 1192
    .restart local v8    # "isOldAPPinN":Ljava/lang/Boolean;
    :cond_5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v4

    .restart local v4    # "height":I
    goto/16 :goto_4

    .line 1199
    .restart local v14    # "windowsManager":Landroid/view/WindowManager;
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1203
    .restart local v7    # "isLandscape":Z
    :cond_7
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v13

    .restart local v13    # "width":I
    goto/16 :goto_6

    .line 1210
    .restart local v10    # "percent":D
    :pswitch_7
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 1211
    const-wide v10, 0x3fea8f5c28f5c28fL    # 0.83

    goto/16 :goto_7

    .line 1216
    :pswitch_8
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 1217
    const-wide v10, 0x3fee666666666666L    # 0.95

    goto/16 :goto_7

    .line 1222
    :pswitch_9
    const-wide v10, 0x3fedc28f5c28f5c3L    # 0.93

    .line 1223
    goto/16 :goto_7

    .line 1228
    :pswitch_a
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x15

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 1229
    const-wide v10, 0x3feeb851eb851eb8L    # 0.96

    goto/16 :goto_7

    .line 1145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1172
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1207
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private b(Landroid/app/Notification;)Ljava/lang/String;
    .locals 7
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x10

    .line 1497
    const/4 v2, 0x0

    .line 1499
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 1534
    :goto_0
    return-object v4

    .line 1503
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1504
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 1506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", tickerView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_2

    .line 1509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", bigContentView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 1512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", headsUpContentView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_5

    .line 1516
    const-string/jumbo v4, "extras"

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1517
    .local v1, "mExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_7

    .line 1518
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", extras:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    .end local v1    # "mExtras":Landroid/os/Bundle;
    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", notification.icon:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/Notification;->icon:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_6

    .line 1527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", smallIcon:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", largeIcon:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    move-object v2, v3

    .line 1534
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1520
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v1    # "mExtras":Landroid/os/Bundle;
    .restart local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_7
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ", extras:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1530
    .end local v1    # "mExtras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 1531
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_3
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "notificationToString error"

    invoke-static {v4, v5, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1530
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private b(Landroid/widget/RemoteViews;)Z
    .locals 6
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 992
    if-nez p1, :cond_0

    .line 993
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "remoteViews is null, shouldReplaceRemoteViews false"

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :goto_0
    return v1

    .line 995
    :cond_0
    sget-object v3, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 996
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "system contains layout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", shouldReplaceRemoteViews false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "shouldReplaceRemoteViews error,  shouldReplaceRemoteViews"

    invoke-static {v1, v3, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 1009
    goto :goto_0

    .line 1004
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "shouldReplaceRemoteViews true"

    invoke-static {v1, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    .line 1005
    goto :goto_0
.end method

.method private c(Landroid/widget/RemoteViews;)Ljava/util/Map;
    .locals 13
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1339
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1341
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    .line 1343
    .local v6, "mActionsObj":Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v10, "mActions"

    invoke-static {p1, v10}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1348
    .end local v6    # "mActionsObj":Ljava/lang/Object;
    :goto_0
    instance-of v10, v6, Ljava/util/Collection;

    if-eqz v10, :cond_1

    move-object v5, v6

    .line 1349
    check-cast v5, Ljava/util/Collection;

    .line 1350
    .local v5, "mActions":Ljava/util/Collection;
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1351
    .local v8, "one":Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 1352
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 1353
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v10, "SetOnClickPendingIntent"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1354
    const/4 v4, 0x0

    .line 1355
    .local v4, "id":I
    const/4 v9, 0x0

    .line 1357
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_1
    const-string/jumbo v10, "viewId"

    invoke-static {v8, v10}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1358
    const-string/jumbo v10, "pendingIntent"

    invoke-static {v8, v10}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/app/PendingIntent;

    move-object v9, v0

    .line 1360
    const-string/jumbo v10, "getIntent"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v12}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1361
    .local v3, "i":Landroid/content/Intent;
    const-string/jumbo v10, "com.iflytek.greenplug.pending.OldIntent"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1370
    .end local v3    # "i":Landroid/content/Intent;
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1344
    .end local v1    # "action":Ljava/lang/String;
    .end local v4    # "id":I
    .end local v5    # "mActions":Ljava/util/Collection;
    .end local v8    # "one":Ljava/lang/Object;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v6    # "mActionsObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1345
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1363
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v6    # "mActionsObj":Ljava/lang/Object;
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v4    # "id":I
    .restart local v5    # "mActions":Ljava/util/Collection;
    .restart local v8    # "one":Ljava/lang/Object;
    .restart local v9    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_1
    move-exception v2

    .line 1364
    .restart local v2    # "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 1365
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 1366
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 1367
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 1368
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 1376
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "id":I
    .end local v5    # "mActions":Ljava/util/Collection;
    .end local v8    # "one":Ljava/lang/Object;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    return-object v7
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 9
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 894
    if-eqz p3, :cond_2

    array-length v6, p3

    if-lez v6, :cond_2

    .line 895
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p3

    if-ge v1, v6, :cond_2

    .line 896
    aget-object v6, p3, v1

    instance-of v6, v6, Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    .line 897
    aget-object v0, p3, v1

    check-cast v0, Landroid/content/ComponentName;

    .line 898
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 899
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Lcom/iflytek/greenplug/client/PluginManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 900
    .local v4, "pluginServiceInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {v4}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$700(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v6

    aput-object v6, p3, v1

    .line 895
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "pluginServiceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 902
    :cond_1
    aget-object v6, p3, v1

    instance-of v6, v6, Landroid/app/Notification;

    if-eqz v6, :cond_0

    .line 903
    aget-object v2, p3, v1

    check-cast v2, Landroid/app/Notification;

    .line 904
    .local v2, "notification":Landroid/app/Notification;
    invoke-direct {p0, v2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "pluginPkg":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPluginPackage result is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 909
    invoke-direct {p0, v3, v2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;->a(Ljava/lang/String;Landroid/app/Notification;)V

    .line 916
    .end local v1    # "i":I
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "pluginPkg":Ljava/lang/String;
    :goto_1
    return v5

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method
