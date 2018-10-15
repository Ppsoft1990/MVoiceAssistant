.class Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;
.super Ljava/lang/Object;
.source "SheduleOpLogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->b()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;->a:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;->a:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v6, "appBuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->r()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;->a:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->b(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->r()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 130
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_0

    .line 131
    invoke-static {}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->r()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->r()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v8, v0, :cond_0

    .line 135
    const-string/jumbo v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v7

    .line 139
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "BlcOpLogHelper"

    const-string/jumbo v1, "collectPermissionInfo not found app"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 142
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;->a:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    const-string/jumbo v1, "schedule_safe_app"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v6    # "appBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;->a:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->c(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;->a:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    const-string/jumbo v1, "IC00001"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    :cond_3
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 149
    .local v5, "customParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;->a:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->d(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 150
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;->a:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    iget-object v1, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;->a:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->c(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;->a:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    .line 151
    invoke-static {v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->e(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)J

    move-result-wide v2

    const-string/jumbo v4, "success"

    .line 150
    invoke-static/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 155
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;->a:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a()V

    .line 156
    return-void
.end method
