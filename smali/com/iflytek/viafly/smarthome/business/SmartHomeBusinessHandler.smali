.class final Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;
.super Lcom/iflytek/framework/business/AbsBusinessHandler;
.source "SmartHomeBusinessHandler.java"

# interfaces
.implements Lcom/iflytek/viafly/smarthome/base/SmartObserver;


# static fields
.field public static final DEV_NAME_SPLIT:Ljava/lang/String; = "\u548c|\u4e0e|\u4ee5\u53ca"

.field public static final JD_DEVICE_TAG:Ljava/lang/String; = "jd_device"

.field public static final MODE_SPLIT:Ljava/lang/String; = "`"

.field private static final TAG:Ljava/lang/String; = "SmartHomeBusinessHandler"


# instance fields
.field private mSmartHomeView:Lcom/iflytek/framework/browser/localControlView/OperationView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private addDisplayView(Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)V
    .locals 4
    .param p1, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1110
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->createAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v0

    .line 1111
    .local v0, "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 1114
    :cond_0
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 1115
    return-void
.end method

.method private createSmartHomePluginHandler()Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;
    .locals 5

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v3

    .line 1119
    invoke-virtual {v3}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v2

    .line 1120
    .local v2, "widgetContainerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 1122
    check-cast v1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 1124
    .local v1, "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v0

    .line 1125
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    if-eqz v0, :cond_0

    .line 1126
    new-instance v3, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;

    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;-><init>(Landroid/content/Context;Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V

    .line 1130
    .end local v0    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    .end local v1    # "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private findDevice(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .locals 5
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;"
        }
    .end annotation

    .prologue
    .line 1274
    .local p1, "foundList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    const-string/jumbo v2, "SmartHomeBusinessHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findDevice | deviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/4 v0, 0x0

    .line 1276
    .local v0, "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .line 1278
    .local v1, "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1279
    move-object v0, v1

    .line 1299
    .end local v1    # "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :cond_1
    :goto_0
    const-string/jumbo v2, "SmartHomeBusinessHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findDevice | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    return-object v0

    .line 1281
    .restart local v1    # "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :cond_2
    const-string/jumbo v3, "aircondition"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_AIR_CONDITIONER:Ljava/lang/String;

    .line 1282
    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1284
    move-object v0, v1

    .line 1285
    goto :goto_0

    .line 1286
    :cond_3
    const-string/jumbo v3, "aircondition"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->REMOTE_CONTROL:Ljava/lang/String;

    .line 1287
    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1289
    move-object v0, v1

    .line 1290
    goto :goto_0

    .line 1291
    :cond_4
    const-string/jumbo v3, "humidifier"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_HUMIDIFIER:Ljava/lang/String;

    .line 1292
    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1294
    move-object v0, v1

    .line 1295
    goto :goto_0
.end method

.method private findJdDevice(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .locals 12
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;"
        }
    .end annotation

    .prologue
    .line 881
    .local p1, "foundList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 882
    :cond_0
    const/4 v3, 0x0

    .line 965
    :goto_0
    return-object v3

    .line 884
    :cond_1
    const-string/jumbo v7, ""

    .line 885
    .local v7, "voiceResultName":Ljava/lang/String;
    const-string/jumbo v8, "light"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 886
    const-string/jumbo v7, "\u706f"

    .line 895
    :goto_1
    const/4 v4, 0x0

    .line 896
    .local v4, "jdDevNum":I
    const/4 v5, 0x0

    .line 897
    .local v5, "jdDevice":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .line 898
    .local v3, "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    if-eqz v3, :cond_2

    .line 901
    invoke-virtual {v3}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "devName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 903
    .local v2, "devType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 907
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "jd_device"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 911
    add-int/lit8 v4, v4, 0x1

    .line 912
    move-object v5, v3

    .line 914
    const-string/jumbo v9, "SmartHomeBusinessHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "findJdDevice: jdDevNum "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 917
    const-string/jumbo v9, "`"

    invoke-virtual {p3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 918
    const-string/jumbo v9, "`"

    invoke-virtual {p3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 919
    .local v6, "modes":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 921
    const-string/jumbo v9, "\u548c"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "\u4e0e"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "\u4ee5\u53ca"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 922
    :cond_3
    const-string/jumbo v9, "\u548c|\u4e0e|\u4ee5\u53ca"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "devNames":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v9, v1

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 925
    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 927
    const/4 v9, 0x0

    aget-object v9, v1, v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    aget-object v9, v1, v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    const/4 v9, 0x0

    aget-object v9, v1, v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    .line 928
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    aget-object v9, v1, v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 929
    :cond_5
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->setCtrlModeType(I)V

    goto/16 :goto_0

    .line 887
    .end local v0    # "devName":Ljava/lang/String;
    .end local v1    # "devNames":[Ljava/lang/String;
    .end local v2    # "devType":Ljava/lang/String;
    .end local v3    # "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .end local v4    # "jdDevNum":I
    .end local v5    # "jdDevice":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .end local v6    # "modes":[Ljava/lang/String;
    :cond_6
    const-string/jumbo v8, "switch"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 888
    const-string/jumbo v7, "\u5f00\u5173"

    goto/16 :goto_1

    .line 889
    :cond_7
    const-string/jumbo v8, "slot"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 890
    const-string/jumbo v7, "\u63d2\u5ea7"

    goto/16 :goto_1

    .line 892
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 937
    .restart local v0    # "devName":Ljava/lang/String;
    .restart local v2    # "devType":Ljava/lang/String;
    .restart local v3    # "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .restart local v4    # "jdDevNum":I
    .restart local v5    # "jdDevice":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :cond_9
    const-string/jumbo v9, "\u548c"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string/jumbo v9, "\u4e0e"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string/jumbo v9, "\u4ee5\u53ca"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 938
    :cond_a
    const-string/jumbo v9, "\u548c|\u4e0e|\u4ee5\u53ca"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 939
    .restart local v1    # "devNames":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v9, v1

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 940
    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {v9, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 942
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->setCtrlModeType(I)V

    goto/16 :goto_0

    .line 944
    :cond_b
    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v9, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 946
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->setCtrlModeType(I)V

    goto/16 :goto_0

    .line 951
    .end local v1    # "devNames":[Ljava/lang/String;
    :cond_c
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 952
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->setCtrlModeType(I)V

    goto/16 :goto_0

    .line 961
    .end local v0    # "devName":Ljava/lang/String;
    .end local v2    # "devType":Ljava/lang/String;
    .end local v3    # "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :cond_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    if-ne v8, v4, :cond_e

    .line 962
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->setCtrlModeType(I)V

    move-object v3, v5

    .line 963
    goto/16 :goto_0

    .line 965
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private getJdModel(Lcom/iflytek/viafly/smarthome/base/DeviceItem;Lcom/iflytek/viafly/smarthome/base/Command;Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;
    .locals 6
    .param p1, "deviceItem"    # Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .param p2, "command"    # Lcom/iflytek/viafly/smarthome/base/Command;
    .param p3, "mode"    # Ljava/lang/String;

    .prologue
    .line 846
    if-nez p1, :cond_0

    .line 847
    const/4 v1, 0x0

    .line 870
    :goto_0
    return-object v1

    .line 849
    :cond_0
    new-instance v1, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    invoke-direct {v1}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;-><init>()V

    .line 850
    .local v1, "jdVoiceModel":Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;
    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setFeeId(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p2}, Lcom/iflytek/viafly/smarthome/base/Command;->getCmd()Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v3, "openequipment"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 853
    const-string/jumbo v3, "\u5df2\u4e3a\u60a8\u6253\u5f00\u8bbe\u5907"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setInfo(Ljava/lang/String;)V

    .line 854
    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setCurrentValue(Ljava/lang/String;)V

    .line 859
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getCtrlModeType()I

    move-result v2

    .line 860
    .local v2, "modelType":I
    const/4 v3, 0x4

    if-ne v3, v2, :cond_4

    .line 861
    const-string/jumbo v3, "powerAll"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setStreamId(Ljava/lang/String;)V

    .line 869
    :cond_2
    :goto_2
    const-string/jumbo v3, "SmartHomeBusinessHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getJdModel: StreamId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->getStreamId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 855
    .end local v2    # "modelType":I
    :cond_3
    const-string/jumbo v3, "closeequipment"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 856
    const-string/jumbo v3, "\u5df2\u4e3a\u60a8\u5173\u95ed\u8bbe\u5907"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setInfo(Ljava/lang/String;)V

    .line 857
    const-string/jumbo v3, "0"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setCurrentValue(Ljava/lang/String;)V

    goto :goto_1

    .line 862
    .restart local v2    # "modelType":I
    :cond_4
    const/4 v3, 0x1

    if-ne v3, v2, :cond_5

    .line 863
    const-string/jumbo v3, "power`powerAll"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setStreamId(Ljava/lang/String;)V

    goto :goto_2

    .line 864
    :cond_5
    const/4 v3, 0x3

    if-ne v3, v2, :cond_6

    .line 865
    const-string/jumbo v3, "power2"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setStreamId(Ljava/lang/String;)V

    goto :goto_2

    .line 866
    :cond_6
    const/4 v3, 0x2

    if-ne v3, v2, :cond_2

    .line 867
    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->setStreamId(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleAirDryer(Lcom/iflytek/viafly/smarthome/base/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;)V
    .locals 8
    .param p1, "deviceItem"    # Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawText"    # Ljava/lang/String;
    .param p5, "speechResult"    # Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;

    .prologue
    .line 978
    if-eqz p1, :cond_0

    invoke-static {p4}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    new-instance v1, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v1, p2}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>(Ljava/lang/String;)V

    .line 983
    .local v1, "command":Lcom/iflytek/viafly/smarthome/base/Command;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "cmdId":Ljava/lang/String;
    move-object v3, p4

    .line 985
    .local v3, "rawcommand":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 986
    .local v2, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    const/4 v5, 0x0

    invoke-interface {v2, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 987
    new-instance v4, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v3, v2}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 988
    .local v4, "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v5

    invoke-virtual {v5, v4, p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto :goto_0
.end method

.method private handleAirPurifier(Lcom/iflytek/viafly/smarthome/base/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;)V
    .locals 8
    .param p1, "deviceItem"    # Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawText"    # Ljava/lang/String;
    .param p5, "speechResult"    # Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;

    .prologue
    .line 1000
    if-eqz p1, :cond_0

    invoke-static {p4}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    new-instance v1, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v1, p2}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v1, "command":Lcom/iflytek/viafly/smarthome/base/Command;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "cmdId":Ljava/lang/String;
    move-object v3, p4

    .line 1007
    .local v3, "rawcommand":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1008
    .local v2, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    const/4 v5, 0x0

    invoke-interface {v2, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1009
    new-instance v4, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v3, v2}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1010
    .local v4, "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v5

    invoke-virtual {v5, v4, p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto :goto_0
.end method

.method private handleDemoResult(Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;)Z
    .locals 24
    .param p1, "speechResult"    # Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;

    .prologue
    .line 1190
    if-eqz p1, :cond_4

    .line 1191
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getOperation()Ljava/lang/String;

    move-result-object v14

    .line 1192
    .local v14, "operation":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getRawText()Ljava/lang/String;

    move-result-object v16

    .line 1194
    .local v16, "tip":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string/jumbo v20, "demo_operate"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1195
    invoke-virtual/range {p0 .. p1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->createAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v7

    .line 1197
    .local v7, "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    const-string/jumbo v20, "\u6211\u4e94\u5206\u949f\u540e\u5230\u5bb6"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1198
    const-string/jumbo v20, "\u597d\u7684\uff0c\u6309\u7167\u60a8\u7684\u4e60\u60ef\uff0c\u7a7a\u8c03\u5df2\u7ecf\u8c03\u523026\u5ea6\uff0c\u70ed\u6c34\u5668\u8c03\u523050\u5ea6\u3002"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 1199
    const-wide/16 v20, 0x258

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v7, v1, v2}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 1200
    const-string/jumbo v20, "\u597d\u7684\uff0c\u6309\u7167\u60a8\u7684\u4e60\u60ef\uff0c\u7a7a\u8c03\u5df2\u7ecf\u8c03\u523026\u5ea6\uff0c\u70ed\u6c34\u5668\u8c03\u523050\u5ea6\u3002"

    invoke-static/range {v20 .. v20}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const-wide/16 v22, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 1203
    new-instance v12, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-direct {v12}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>()V

    .line 1204
    .local v12, "haierDeviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    const-string/jumbo v20, "aircondition"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setEquipment(Ljava/lang/String;)V

    .line 1205
    new-instance v8, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v8}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>()V

    .line 1206
    .local v8, "command":Lcom/iflytek/viafly/smarthome/base/Command;
    const-string/jumbo v20, "setparameters"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 1207
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1208
    .local v6, "airParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v20, "temperature"

    const-string/jumbo v21, "26"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    invoke-virtual {v8, v6}, Lcom/iflytek/viafly/smarthome/base/Command;->setParams(Ljava/util/Map;)V

    .line 1210
    invoke-virtual {v12, v8}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->addCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v12, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    .line 1213
    new-instance v13, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-direct {v13}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>()V

    .line 1214
    .local v13, "haierWaterDeviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    const-string/jumbo v20, "waterheater"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setEquipment(Ljava/lang/String;)V

    .line 1215
    new-instance v18, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct/range {v18 .. v18}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>()V

    .line 1216
    .local v18, "waterCommand":Lcom/iflytek/viafly/smarthome/base/Command;
    const-string/jumbo v20, "setparameters"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 1217
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 1218
    .local v19, "waterParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v20, "temperature"

    const-string/jumbo v21, "50"

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    invoke-virtual/range {v18 .. v19}, Lcom/iflytek/viafly/smarthome/base/Command;->setParams(Ljava/util/Map;)V

    .line 1220
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->addCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V

    .line 1221
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v13, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    .line 1266
    .end local v6    # "airParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v12    # "haierDeviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .end local v13    # "haierWaterDeviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .end local v18    # "waterCommand":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v19    # "waterParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/16 v20, 0x1

    .line 1270
    .end local v7    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v14    # "operation":Ljava/lang/String;
    .end local v16    # "tip":Ljava/lang/String;
    :goto_1
    return v20

    .line 1223
    .restart local v7    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .restart local v14    # "operation":Ljava/lang/String;
    .restart local v16    # "tip":Ljava/lang/String;
    :cond_1
    const-string/jumbo v20, "\u6253\u5f00\u592e\u89c6\u65b0\u95fb\u9891\u9053\uff0c\u5e2e\u6211\u716e\u676f\u5496\u5561"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1224
    const-string/jumbo v20, "\u597d\u7684\uff0c\u7535\u89c6\u6b63\u5728\u64ad\u653e\u592e\u89c6\u65b0\u95fb\u9891\u9053\uff0c\u5496\u5561\u673a\u6b63\u5728\u4e3a\u60a8\u716e\u5496\u5561\u3002"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 1225
    const-wide/16 v20, 0x258

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v7, v1, v2}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 1226
    const-string/jumbo v20, "\u597d\u7684\uff0c\u7535\u89c6\u6b63\u5728\u64ad\u653e\u592e\u89c6\u65b0\u95fb\u9891\u9053\uff0c\u5496\u5561\u673a\u6b63\u5728\u4e3a\u60a8\u716e\u5496\u5561\u3002"

    invoke-static/range {v20 .. v20}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const-wide/16 v22, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 1230
    new-instance v17, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    const-string/jumbo v20, "tv"

    invoke-static {}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->genCmdId()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "\u64ad\u653e\u592e\u89c6\u65b0\u95fb\u9891\u9053"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1231
    .local v17, "voiceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    .line 1234
    new-instance v15, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    const-string/jumbo v20, "coffeemaker"

    invoke-static {}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->genCmdId()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1235
    .local v15, "sp2Request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    new-instance v8, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v8}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>()V

    .line 1236
    .restart local v8    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    const-string/jumbo v20, "openequipment"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v15, v8}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->addCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V

    .line 1238
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto/16 :goto_0

    .line 1240
    .end local v8    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v15    # "sp2Request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .end local v17    # "voiceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :cond_2
    const-string/jumbo v20, "\u6211\u60f3\u6d17\u4e2a\u6fa1"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1241
    const-string/jumbo v20, "\u597d\u7684\uff0c\u70ed\u6c34\u5668\u5df2\u7ecf\u5f00\u542f\u3002"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 1243
    new-instance v13, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-direct {v13}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>()V

    .line 1244
    .restart local v13    # "haierWaterDeviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    sget-object v20, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->HAIER_WATERHEATER:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setEquipment(Ljava/lang/String;)V

    .line 1245
    new-instance v20, Lcom/iflytek/viafly/smarthome/base/Command;

    const-string/jumbo v21, "openequipment"

    invoke-direct/range {v20 .. v21}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->addCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V

    .line 1246
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v13, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto/16 :goto_0

    .line 1248
    .end local v13    # "haierWaterDeviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :cond_3
    const-string/jumbo v20, "\u62c9\u5f00\u7a97\u5e18\uff0c\u5e2e\u6211\u716e\u676f\u5496\u5561"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1249
    const-string/jumbo v20, "\u597d\u7684\uff0c\u5df2\u7ecf\u4e3a\u60a8\u62c9\u5f00\u7a97\u5e18\uff0c\u5496\u5561\u673a\u6b63\u5728\u4e3a\u60a8\u716e\u5496\u5561\u3002"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 1250
    const-wide/16 v20, 0x258

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v7, v1, v2}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 1251
    const-string/jumbo v20, "\u597d\u7684\uff0c\u5df2\u7ecf\u4e3a\u60a8\u62c9\u5f00\u7a97\u5e18\uff0c\u5496\u5561\u673a\u6b63\u5728\u4e3a\u60a8\u716e\u5496\u5561\u3002"

    invoke-static/range {v20 .. v20}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const-wide/16 v22, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 1254
    new-instance v11, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    const-string/jumbo v20, "curtain"

    invoke-static {}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->genCmdId()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1255
    .local v11, "deviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    new-instance v9, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v9}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>()V

    .line 1256
    .local v9, "command1":Lcom/iflytek/viafly/smarthome/base/Command;
    const-string/jumbo v20, "openequipment"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v11, v9}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->addCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V

    .line 1258
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v11, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    .line 1260
    new-instance v15, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    const-string/jumbo v20, "curtain"

    invoke-static {}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->genCmdId()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1261
    .restart local v15    # "sp2Request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    new-instance v10, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v10}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>()V

    .line 1262
    .local v10, "command2":Lcom/iflytek/viafly/smarthome/base/Command;
    const-string/jumbo v20, "openequipment"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v15, v10}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->addCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V

    .line 1264
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto/16 :goto_0

    .line 1270
    .end local v7    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v9    # "command1":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v10    # "command2":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v11    # "deviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .end local v14    # "operation":Ljava/lang/String;
    .end local v15    # "sp2Request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .end local v16    # "tip":Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_1
.end method

.method private handleMideaFan(Lcom/iflytek/viafly/smarthome/base/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;)V
    .locals 10
    .param p1, "deviceItem"    # Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawText"    # Ljava/lang/String;
    .param p5, "speechResult"    # Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;

    .prologue
    .line 1037
    if-eqz p1, :cond_0

    invoke-static {p4}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p5, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    new-instance v1, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v1, p2}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v1, "command":Lcom/iflytek/viafly/smarthome/base/Command;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "cmdId":Ljava/lang/String;
    move-object v5, p4

    .line 1043
    .local v5, "rawcommand":Ljava/lang/String;
    const-string/jumbo v7, "setparameters"

    invoke-static {p2, v7}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v5}, Lcom/iflytek/viafly/util/IflyStringUtil;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1044
    const/4 v3, 0x0

    .line 1045
    .local v3, "param":Lcom/iflytek/viafly/smarthome/base/Param;
    invoke-virtual {p5}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getSwingAngle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1046
    const-string/jumbo v7, "\u6447\u5934"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1047
    new-instance v3, Lcom/iflytek/viafly/smarthome/base/Param;

    .end local v3    # "param":Lcom/iflytek/viafly/smarthome/base/Param;
    invoke-direct {v3}, Lcom/iflytek/viafly/smarthome/base/Param;-><init>()V

    .line 1048
    .restart local v3    # "param":Lcom/iflytek/viafly/smarthome/base/Param;
    const-string/jumbo v7, "swingangle"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setName(Ljava/lang/String;)V

    .line 1049
    const-string/jumbo v7, "\u505c\u6b62"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1050
    const-string/jumbo v7, "-1"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setValue(Ljava/lang/String;)V

    .line 1064
    :cond_2
    :goto_1
    invoke-virtual {p5}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1065
    const-string/jumbo v7, "\u81ea\u7136\u98ce"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1066
    new-instance v3, Lcom/iflytek/viafly/smarthome/base/Param;

    .end local v3    # "param":Lcom/iflytek/viafly/smarthome/base/Param;
    invoke-direct {v3}, Lcom/iflytek/viafly/smarthome/base/Param;-><init>()V

    .line 1067
    .restart local v3    # "param":Lcom/iflytek/viafly/smarthome/base/Param;
    const-string/jumbo v7, "mode"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setName(Ljava/lang/String;)V

    .line 1068
    const-string/jumbo v7, "\u81ea\u7136\u98ce"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setValue(Ljava/lang/String;)V

    .line 1084
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 1085
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Param;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setParams(Ljava/util/List;)V

    .line 1090
    .end local v3    # "param":Lcom/iflytek/viafly/smarthome/base/Param;
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Param;>;"
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1091
    .local v2, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    const/4 v7, 0x0

    invoke-interface {v2, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1092
    new-instance v6, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0, v5, v2}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1093
    .local v6, "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v7

    invoke-virtual {v7, v6, p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto/16 :goto_0

    .line 1052
    .end local v2    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    .end local v6    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .restart local v3    # "param":Lcom/iflytek/viafly/smarthome/base/Param;
    :cond_5
    const-string/jumbo v7, "90\u5ea6\u6447\u5934"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 1056
    :cond_6
    const-string/jumbo v7, "swingangle"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setName(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p5}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getSwingAngle()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "on"

    invoke-static {v7, v8}, Lcom/iflytek/viafly/util/IflyStringUtil;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1058
    const-string/jumbo v7, "-1"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 1060
    :cond_7
    const-string/jumbo v7, "90\u5ea6\u6447\u5934"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 1069
    :cond_8
    const-string/jumbo v7, "\u7761\u7720\u98ce"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1070
    new-instance v3, Lcom/iflytek/viafly/smarthome/base/Param;

    .end local v3    # "param":Lcom/iflytek/viafly/smarthome/base/Param;
    invoke-direct {v3}, Lcom/iflytek/viafly/smarthome/base/Param;-><init>()V

    .line 1071
    .restart local v3    # "param":Lcom/iflytek/viafly/smarthome/base/Param;
    const-string/jumbo v7, "mode"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setName(Ljava/lang/String;)V

    .line 1072
    const-string/jumbo v7, "\u7761\u7720\u98ce"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 1073
    :cond_9
    const-string/jumbo v7, "\u6b63\u5e38\u98ce"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1074
    new-instance v3, Lcom/iflytek/viafly/smarthome/base/Param;

    .end local v3    # "param":Lcom/iflytek/viafly/smarthome/base/Param;
    invoke-direct {v3}, Lcom/iflytek/viafly/smarthome/base/Param;-><init>()V

    .line 1075
    .restart local v3    # "param":Lcom/iflytek/viafly/smarthome/base/Param;
    const-string/jumbo v7, "mode"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setName(Ljava/lang/String;)V

    .line 1076
    const-string/jumbo v7, "\u6b63\u5e38\u98ce"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1079
    :cond_a
    new-instance v3, Lcom/iflytek/viafly/smarthome/base/Param;

    .end local v3    # "param":Lcom/iflytek/viafly/smarthome/base/Param;
    invoke-direct {v3}, Lcom/iflytek/viafly/smarthome/base/Param;-><init>()V

    .line 1080
    .restart local v3    # "param":Lcom/iflytek/viafly/smarthome/base/Param;
    const-string/jumbo v7, "mode"

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setName(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p5}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/smarthome/base/Param;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private handleMideaHumidifier(Lcom/iflytek/viafly/smarthome/base/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;)V
    .locals 8
    .param p1, "deviceItem"    # Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawText"    # Ljava/lang/String;
    .param p5, "speechResult"    # Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;

    .prologue
    .line 1017
    if-eqz p1, :cond_0

    invoke-static {p4}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    new-instance v1, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v1, p2}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v1, "command":Lcom/iflytek/viafly/smarthome/base/Command;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "cmdId":Ljava/lang/String;
    move-object v3, p4

    .line 1024
    .local v3, "rawcommand":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1025
    .local v2, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    const/4 v5, 0x0

    invoke-interface {v2, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1026
    new-instance v4, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v3, v2}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1027
    .local v4, "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v5

    invoke-virtual {v5, v4, p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public getSpeechIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string/jumbo v1, "local_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    return-object v0
.end method

.method public handleShortCutSpeechResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method protected onClearBusiness()V
    .locals 0

    .prologue
    .line 1107
    return-void
.end method

.method public onDataUpdated(Lcom/iflytek/framework/business/entities/UpdateDataType;)V
    .locals 0
    .param p1, "type"    # Lcom/iflytek/framework/business/entities/UpdateDataType;

    .prologue
    .line 95
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 35
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;

    .prologue
    .line 204
    const-string/jumbo v3, "SmartHomeBusinessHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onExec action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " args = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    move-object/from16 v26, p2

    .line 209
    .local v26, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    const-string/jumbo v3, "getAppStateDesc"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 211
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 212
    .local v23, "identity":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getFoundDevices()Ljava/util/List;

    move-result-object v15

    .line 213
    .local v15, "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    invoke-static {v15}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    const-string/jumbo v5, "\u70b9\u51fb\u5b89\u88c5"

    invoke-direct {v3, v4, v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .end local v15    # "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .end local v23    # "identity":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 216
    .restart local v15    # "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .restart local v23    # "identity":Ljava/lang/String;
    :cond_0
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .line 217
    .local v14, "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    invoke-virtual {v14}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getDeviceCtrl()Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    move-result-object v10

    .line 221
    .local v10, "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->getCtrlType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 222
    invoke-virtual {v10}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    const-string/jumbo v5, "\u6253\u5f00\u5e94\u7528"

    invoke-direct {v3, v4, v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    .end local v10    # "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    .end local v14    # "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .end local v15    # "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .end local v23    # "identity":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 435
    .local v20, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "SmartHomeBusinessHandler"

    const-string/jumbo v4, "onExec failed "

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "JSON error"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v20    # "ex":Ljava/lang/Exception;
    .restart local v10    # "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    .restart local v14    # "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .restart local v15    # "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .restart local v23    # "identity":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v10}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, "downloadUrl":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v3

    .line 228
    invoke-virtual {v3, v7}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v18

    .line 229
    .local v18, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v18, :cond_3

    const/4 v3, 0x2

    .line 230
    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 231
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    const-string/jumbo v5, "\u6b63\u5728\u5b89\u88c5"

    invoke-direct {v3, v4, v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    .end local v18    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_3
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    const-string/jumbo v5, "\u70b9\u51fb\u5b89\u88c5"

    invoke-direct {v3, v4, v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    .end local v7    # "downloadUrl":Ljava/lang/String;
    .end local v10    # "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    .end local v14    # "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :cond_4
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    const-string/jumbo v5, ""

    invoke-direct {v3, v4, v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    .end local v15    # "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .end local v23    # "identity":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "onLongClick"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_7

    .line 438
    :cond_6
    :goto_1
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_0

    .line 248
    :cond_7
    :try_start_2
    const-string/jumbo v3, "downloadPlugin"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 249
    invoke-static {}, Lhl;->k()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_8

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u7cfb\u7edf\u4e0d\u652f\u6301"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 251
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_0

    .line 253
    :cond_8
    const/16 v3, 0xcd

    invoke-static {v3}, Lasb;->d(I)Z

    move-result v25

    .line 254
    .local v25, "isPluginInstalled":Z
    if-nez v25, :cond_6

    .line 255
    invoke-static {}, Lari;->a()Lari;

    move-result-object v2

    const/16 v3, 0xcd

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    sget-object v6, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->smart_home:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v7, Lasc;->a:Lasc;

    invoke-virtual/range {v2 .. v7}, Lari;->a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    goto :goto_1

    .line 257
    .end local v25    # "isPluginInstalled":Z
    :cond_9
    const-string/jumbo v3, "getSupportedDevices"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getSupportDevices()Ljava/util/List;

    move-result-object v31

    .line 261
    .local v31, "supportDevices":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/SupportDevice;>;"
    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 263
    .local v27, "jsonObject":Lorg/json/JSONObject;
    :try_start_3
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 264
    .local v16, "deviceJsonArray":Lorg/json/JSONArray;
    invoke-static/range {v31 .. v31}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 265
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/viafly/smarthome/base/SupportDevice;

    .line 266
    .local v14, "deviceItem":Lcom/iflytek/viafly/smarthome/base/SupportDevice;
    if-eqz v14, :cond_a

    .line 267
    invoke-virtual {v14}, Lcom/iflytek/viafly/smarthome/base/SupportDevice;->getName()Ljava/lang/String;

    move-result-object v29

    .line 268
    .local v29, "name":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 269
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 270
    .local v17, "deviceJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 278
    .end local v14    # "deviceItem":Lcom/iflytek/viafly/smarthome/base/SupportDevice;
    .end local v16    # "deviceJsonArray":Lorg/json/JSONArray;
    .end local v17    # "deviceJsonObject":Lorg/json/JSONObject;
    .end local v29    # "name":Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 279
    .local v19, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "SmartHomeBusinessHandler"

    const-string/jumbo v4, ""

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v19    # "e":Ljava/lang/Exception;
    :goto_3
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 276
    .restart local v16    # "deviceJsonArray":Lorg/json/JSONArray;
    :cond_b
    :try_start_5
    const-string/jumbo v3, "supportDevices"

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string/jumbo v3, "SmartHomeBusinessHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "supportDevices = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 282
    .end local v16    # "deviceJsonArray":Lorg/json/JSONArray;
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    .end local v31    # "supportDevices":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/SupportDevice;>;"
    :cond_c
    :try_start_6
    const-string/jumbo v3, "getDeviceInfo"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 284
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getDeviceInfo()Ljava/util/List;

    move-result-object v15

    .line 285
    .restart local v15    # "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 287
    .restart local v27    # "jsonObject":Lorg/json/JSONObject;
    :try_start_7
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 288
    .restart local v16    # "deviceJsonArray":Lorg/json/JSONArray;
    invoke-static {v15}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 289
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .line 290
    .local v14, "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    if-eqz v14, :cond_d

    .line 293
    invoke-virtual {v14}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getAlias()Ljava/lang/String;

    move-result-object v8

    .line 294
    .local v8, "alias":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v32

    .line 295
    .local v32, "typeName":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getIdentifier()Ljava/lang/String;

    move-result-object v22

    .line 296
    .local v22, "identifier":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getDeviceId()I

    move-result v12

    .line 297
    .local v12, "deviceId":I
    invoke-virtual {v14}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getDeviceCtrl()Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    move-result-object v10

    .line 298
    .restart local v10    # "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    if-eqz v32, :cond_d

    .line 301
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 302
    .restart local v17    # "deviceJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "alias"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string/jumbo v4, "typeName"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string/jumbo v4, "identifier"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string/jumbo v4, "deviceId"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 306
    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 307
    if-eqz v10, :cond_d

    .line 308
    const-string/jumbo v4, "ctrlType"

    invoke-virtual {v10}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->getCtrlType()I

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    const-string/jumbo v4, "isInstalled"

    invoke-virtual {v10}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->isInstalled()Z

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 310
    const-string/jumbo v4, "downloadUrl"

    invoke-virtual {v10}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 316
    .end local v8    # "alias":Ljava/lang/String;
    .end local v10    # "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    .end local v12    # "deviceId":I
    .end local v14    # "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .end local v16    # "deviceJsonArray":Lorg/json/JSONArray;
    .end local v17    # "deviceJsonObject":Lorg/json/JSONObject;
    .end local v22    # "identifier":Ljava/lang/String;
    .end local v32    # "typeName":Ljava/lang/String;
    :catch_2
    move-exception v19

    .line 317
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v3, "SmartHomeBusinessHandler"

    const-string/jumbo v4, ""

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v19    # "e":Ljava/lang/Exception;
    :goto_5
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 314
    .restart local v16    # "deviceJsonArray":Lorg/json/JSONArray;
    :cond_e
    :try_start_9
    const-string/jumbo v3, "deviceInfos"

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string/jumbo v3, "SmartHomeBusinessHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDeviceInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 320
    .end local v15    # "deviceItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    .end local v16    # "deviceJsonArray":Lorg/json/JSONArray;
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :cond_f
    :try_start_a
    const-string/jumbo v3, "installSmartHomeDeciceApp"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 321
    invoke-static {}, Lhl;->k()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_10

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u7cfb\u7edf\u4e0d\u652f\u6301"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 323
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_0

    .line 325
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 326
    .restart local v7    # "downloadUrl":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 327
    .local v13, "deviceIdentifier":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "title":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 329
    invoke-static {v3}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v3

    .line 330
    invoke-virtual {v3, v7}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v18

    .line 331
    .restart local v18    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v18, :cond_11

    .line 332
    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_11

    .line 333
    invoke-virtual/range {v18 .. v18}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v21

    .line 334
    .local v21, "filePath":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 335
    invoke-static/range {v21 .. v21}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 338
    invoke-static/range {v21 .. v21}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 343
    .end local v21    # "filePath":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v2

    .line 344
    .local v2, "downloadController":Lno;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    .line 345
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Luc;

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Luc;-><init>(Landroid/content/Context;)V

    .line 344
    invoke-virtual {v2, v3, v4}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 347
    const/16 v28, 0x0

    .line 348
    .local v28, "localBusinessWebView":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v30

    check-cast v30, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 350
    .local v30, "smartHomeView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v30, :cond_12

    .line 351
    invoke-virtual/range {v30 .. v30}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v28

    .line 354
    .end local v30    # "smartHomeView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-direct {v4, v5, v13, v0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeDownloadStateListener;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)V

    invoke-virtual {v2, v3, v4}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 355
    const/4 v3, 0x1

    const-string/jumbo v4, "smarthome_app"

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 361
    .end local v2    # "downloadController":Lno;
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "downloadUrl":Ljava/lang/String;
    .end local v13    # "deviceIdentifier":Ljava/lang/String;
    .end local v18    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v28    # "localBusinessWebView":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    :cond_13
    const-string/jumbo v3, "requestDeviceApkUrl"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 362
    invoke-static {}, Lhl;->k()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_14

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u7cfb\u7edf\u4e0d\u652f\u6301"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 364
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_0

    .line 367
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    .line 368
    .restart local v12    # "deviceId":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$1;-><init>(Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;)V

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->onGetAppUrl(Ljava/lang/String;Lcom/iflytek/viafly/smarthome/GetAppUrlObserver;)V

    goto/16 :goto_1

    .line 376
    .end local v12    # "deviceId":I
    :cond_15
    const-string/jumbo v3, "enterSmartHomeDeciceApp"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 377
    invoke-static {}, Lhl;->k()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_16

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u7cfb\u7edf\u4e0d\u652f\u6301"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 379
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_0

    .line 381
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    .line 382
    .restart local v12    # "deviceId":I
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v12, v4, v5}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->startApp(ILjava/lang/String;Lcom/iflytek/viafly/smarthome/AppStartObserver;)V

    goto/16 :goto_1

    .line 383
    .end local v12    # "deviceId":I
    :cond_17
    const-string/jumbo v3, "handleAppEntry"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 384
    invoke-static {}, Lhl;->k()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_18

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u7cfb\u7edf\u4e0d\u652f\u6301"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 386
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_0

    .line 388
    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 389
    .local v11, "deviceDefine":Ljava/lang/String;
    sget-object v3, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_SMARTHOME_APP:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 390
    const/16 v3, 0xcd

    invoke-static {v3}, Lasb;->d(I)Z

    move-result v25

    .line 391
    .restart local v25    # "isPluginInstalled":Z
    if-nez v25, :cond_6

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    if-eqz v3, :cond_6

    .line 394
    new-instance v4, Lasi;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lasi;-><init>(Landroid/content/Context;Lasi$a;)V

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    const/16 v5, 0xcd

    sget-object v33, Lasc;->a:Lasc;

    sget-object v34, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->smart_home:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v3, v5, v0, v1}, Lasi;->a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto/16 :goto_1

    .line 398
    .end local v25    # "isPluginInstalled":Z
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v11, v5}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->startApp(ILjava/lang/String;Lcom/iflytek/viafly/smarthome/AppStartObserver;)V

    goto/16 :goto_1

    .line 400
    .end local v11    # "deviceDefine":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v3, "scanSmartDevices"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 401
    invoke-static {}, Lhl;->k()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1b

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u7cfb\u7edf\u4e0d\u652f\u6301"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 403
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_0

    .line 406
    :cond_1b
    const/16 v3, 0xcd

    invoke-static {v3}, Lasb;->d(I)Z

    move-result v25

    .line 407
    .restart local v25    # "isPluginInstalled":Z
    if-nez v25, :cond_1c

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    if-eqz v3, :cond_6

    .line 410
    new-instance v4, Lasi;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lasi;-><init>(Landroid/content/Context;Lasi$a;)V

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    const/16 v5, 0xcd

    sget-object v33, Lasc;->a:Lasc;

    sget-object v34, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->smart_home:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v3, v5, v0, v1}, Lasi;->a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto/16 :goto_1

    .line 414
    :cond_1c
    new-instance v9, Lcom/iflytek/yd/system/ConnectionManager;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 415
    .local v9, "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v9}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 416
    const-string/jumbo v3, "SmartHomeBusinessHandler"

    const-string/jumbo v4, "scanSmartDevices network not connect"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v3, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$2;-><init>(Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;)V

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->postOnUIHandler(Ljava/lang/Runnable;J)V

    goto/16 :goto_1

    .line 425
    :cond_1d
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->startScan()V

    goto/16 :goto_1

    .line 428
    .end local v9    # "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    .end local v25    # "isPluginInstalled":Z
    :cond_1e
    const-string/jumbo v3, "enterDownloadManager"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 429
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v24, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.iflytek.cmcc.ACTION_ACTIVE"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1
.end method

.method protected onFail(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z
    .locals 2
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 1098
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getTip()Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "tip":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1100
    invoke-direct {p0, p2, v0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayView(Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)V

    .line 1102
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onFailed(ILjava/lang/String;Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "request"    # Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .param p4, "response"    # Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;

    .prologue
    .line 1166
    const-string/jumbo v0, "SmartHomeBusinessHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "device opeartion onFailed code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " equipment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1167
    invoke-virtual {p3}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->getEquipment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " device info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1166
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    new-instance v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$3;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler$3;-><init>(Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->postOnUIHandler(Ljava/lang/Runnable;J)V

    .line 1187
    return-void
.end method

.method protected onFinishFilter(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z
    .locals 1
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 443
    if-eqz p2, :cond_0

    .line 444
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addQuestionView(Ljava/lang/String;)V

    .line 447
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onShow(Lcom/iflytek/framework/business/entities/HandleContext;)V
    .locals 4
    .param p1, "context"    # Lcom/iflytek/framework/business/entities/HandleContext;

    .prologue
    .line 139
    const-string/jumbo v2, "SmartHomeBusinessHandler"

    const-string/jumbo v3, "onShow()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz p1, :cond_0

    .line 142
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getFoundDevices()Ljava/util/List;

    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->addAllDevices(Ljava/util/List;)V

    .line 144
    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/browser/localControlView/OperationView;

    iput-object v2, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->mSmartHomeView:Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 145
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getHomeEntryScanFlag()Z

    move-result v1

    .line 146
    .local v1, "isFromHomeClick":Z
    if-eqz v1, :cond_1

    .line 147
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->mSmartHomeView:Lcom/iflytek/framework/browser/localControlView/OperationView;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    const-string/jumbo v3, "refreshSmartHomeDevicesView()"

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 151
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->setHomeEntryScanFlag(Z)V

    .line 158
    .end local v1    # "isFromHomeClick":Z
    :cond_0
    :goto_1
    return-void

    .line 149
    .restart local v1    # "isFromHomeClick":Z
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->mSmartHomeView:Lcom/iflytek/framework/browser/localControlView/OperationView;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    const-string/jumbo v3, "refreshSmartHomeDevicesViewWithHistory()"

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v1    # "isFromHomeClick":Z
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SmartHomeBusinessHandler"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onSpeechError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 99
    return-void
.end method

.method public onSuccess(ILjava/lang/String;Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "request"    # Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .param p4, "response"    # Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;

    .prologue
    .line 1136
    const-string/jumbo v0, "SmartHomeBusinessHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "device opeartion onSuccess code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " equipment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1137
    invoke-virtual {p3}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->getEquipment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void
.end method

.method protected onSuccess(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 40
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 452
    const-string/jumbo v4, "SmartHomeBusinessHandler"

    const-string/jumbo v37, "onSuccess"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :try_start_0
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;

    if-eqz v4, :cond_3

    .line 455
    move-object/from16 v0, p2

    check-cast v0, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;

    move-object v9, v0

    .line 456
    .local v9, "speechResult":Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;
    if-eqz v9, :cond_3

    .line 457
    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getOperation()Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, "operation":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getTip()Ljava/lang/String;

    move-result-object v33

    .line 459
    .local v33, "tip":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getName()Ljava/lang/String;

    move-result-object v7

    .line 460
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getRawText()Ljava/lang/String;

    move-result-object v8

    .line 461
    .local v8, "rawText":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getMode()Ljava/lang/String;

    move-result-object v27

    .line 463
    .local v27, "mode":Ljava/lang/String;
    const-string/jumbo v4, "\u62c9\u5f00\u7a97\u5e18\uff0c\u5e2e\u6211\u716e\u676f\u5496\u5561"

    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    const-string/jumbo v7, "curtain"

    .line 467
    :cond_0
    invoke-static {v8}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->judgeGoHome(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 468
    const-string/jumbo v7, "aircondition"

    .line 471
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 472
    :cond_2
    const-string/jumbo v4, "SmartHomeBusinessHandler"

    const-string/jumbo v37, "filter name or operation is empty"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    .end local v6    # "operation":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "rawText":Ljava/lang/String;
    .end local v9    # "speechResult":Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;
    .end local v27    # "mode":Ljava/lang/String;
    .end local v33    # "tip":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 476
    .restart local v6    # "operation":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "rawText":Ljava/lang/String;
    .restart local v9    # "speechResult":Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;
    .restart local v27    # "mode":Ljava/lang/String;
    .restart local v33    # "tip":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 477
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 478
    const/4 v5, 0x0

    .line 483
    .local v5, "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    const/16 v4, 0xcd

    invoke-static {v4}, Lasb;->d(I)Z

    move-result v26

    .line 485
    .local v26, "isPluginInstalled":Z
    if-nez v26, :cond_5

    .line 487
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->createAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v11

    .line 488
    .local v11, "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    const-string/jumbo v20, "\u672a\u627e\u5230\u667a\u80fd\u5bb6\u5c45\u8bbe\u5907\u5e94\u7528\u7a0b\u5e8f"

    .line 489
    .local v20, "errorContent":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 490
    sget-object v4, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_SMARTHOME_APP:Ljava/lang/String;

    const-string/jumbo v37, "\u70b9\u51fb\u5b89\u88c5"

    move-object/from16 v0, v37

    invoke-virtual {v11, v4, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-wide/16 v38, 0x12c

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v11, v1, v2}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 492
    invoke-static/range {v20 .. v20}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v37, 0x0

    const-wide/16 v38, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 839
    .end local v5    # "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .end local v6    # "operation":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "rawText":Ljava/lang/String;
    .end local v9    # "speechResult":Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;
    .end local v11    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v20    # "errorContent":Ljava/lang/String;
    .end local v26    # "isPluginInstalled":Z
    .end local v27    # "mode":Ljava/lang/String;
    .end local v33    # "tip":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 840
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SmartHomeBusinessHandler"

    const-string/jumbo v37, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 497
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v5    # "deviceItem":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    .restart local v6    # "operation":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "rawText":Ljava/lang/String;
    .restart local v9    # "speechResult":Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;
    .restart local v26    # "isPluginInstalled":Z
    .restart local v27    # "mode":Ljava/lang/String;
    .restart local v33    # "tip":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getFoundDevices()Ljava/util/List;

    move-result-object v21

    .line 498
    .local v21, "foundList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    invoke-static {}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDevicesMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 499
    .local v17, "deviceName":Ljava/lang/String;
    const-string/jumbo v4, "SmartHomeBusinessHandler"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "onSuccess | name = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ", deviceName = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 501
    const-string/jumbo v4, "SmartHomeBusinessHandler"

    const-string/jumbo v37, "deviceName is null"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "\u6ca1\u6709\u627e\u5230"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 503
    invoke-static {}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getResultMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v37, "\uff0c\u8bf7\u91cd\u65b0\u626b\u63cf"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 505
    .restart local v20    # "errorContent":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->createAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v11

    .line 506
    .restart local v11    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    if-eqz v11, :cond_6

    .line 507
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 509
    :cond_6
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(I)V

    .line 510
    const-wide/16 v38, 0x12c

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v11, v1, v2}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 511
    invoke-static/range {v20 .. v20}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v37, 0x0

    const-wide/16 v38, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    goto/16 :goto_0

    .line 517
    .end local v11    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v20    # "errorContent":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v7, v2}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->findJdDevice(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    move-result-object v5

    .line 518
    const/16 v25, 0x0

    .line 520
    .local v25, "isJdDevice":Z
    if-nez v5, :cond_9

    .line 521
    const-string/jumbo v4, "SmartHomeBusinessHandler"

    const-string/jumbo v37, "findJdDevice == null "

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v7}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->findDevice(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    move-result-object v5

    .line 528
    :goto_1
    if-eqz v5, :cond_a

    const/16 v24, 0x1

    .line 530
    .local v24, "isFound":Z
    :goto_2
    if-nez v24, :cond_b

    .line 531
    const-string/jumbo v4, "SmartHomeBusinessHandler"

    const-string/jumbo v37, "not found devices"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "\u6ca1\u6709\u627e\u5230"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 533
    invoke-static {}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getResultMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v37, "\uff0c\u8bf7\u91cd\u65b0\u626b\u63cf"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 535
    .restart local v20    # "errorContent":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->createAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v11

    .line 536
    .restart local v11    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    if-eqz v11, :cond_8

    .line 537
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 539
    :cond_8
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(I)V

    .line 540
    const-wide/16 v38, 0x12c

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v11, v1, v2}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 541
    invoke-static/range {v20 .. v20}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v37, 0x0

    const-wide/16 v38, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    goto/16 :goto_0

    .line 524
    .end local v11    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v20    # "errorContent":Ljava/lang/String;
    .end local v24    # "isFound":Z
    :cond_9
    const-string/jumbo v4, "SmartHomeBusinessHandler"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "findJdDevice != null CtrlModeType: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v5}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getCtrlModeType()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 528
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 547
    .restart local v24    # "isFound":Z
    :cond_b
    const-string/jumbo v4, "tv"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string/jumbo v4, "voicebox"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 548
    :cond_c
    if-eqz v5, :cond_d

    .line 549
    invoke-virtual {v5}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getDeviceCtrl()Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    move-result-object v16

    .line 551
    .local v16, "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->getCtrlType()I

    move-result v4

    const/16 v37, 0x1

    move/from16 v0, v37

    if-ne v4, v0, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->isInstalled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 552
    const-string/jumbo v4, "SmartHomeBusinessHandler"

    const-string/jumbo v37, "smartHome plugin is null"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "\u672a\u627e\u5230"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getResultMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v37, "\u8bbe\u5907\u5e94\u7528\u7a0b\u5e8f\uff0c\u8bf7\u70b9\u51fb\u5b89\u88c5"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 555
    .restart local v20    # "errorContent":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayView(Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)V

    .line 556
    invoke-static/range {v20 .. v20}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v37, 0x0

    const-wide/16 v38, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    goto/16 :goto_0

    .line 570
    .end local v16    # "deviceCtrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    .end local v20    # "errorContent":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->createAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v11

    .line 572
    .restart local v11    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    if-eqz v25, :cond_11

    .line 573
    new-instance v18, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-static {}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->genCmdId()Ljava/lang/String;

    move-result-object v4

    const/16 v37, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-direct {v0, v7, v4, v8, v1}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 574
    .local v18, "deviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    new-instance v14, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v14, v6}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>(Ljava/lang/String;)V

    .line 575
    .local v14, "command":Lcom/iflytek/viafly/smarthome/base/Command;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->addCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v5, v14, v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getJdModel(Lcom/iflytek/viafly/smarthome/base/DeviceItem;Lcom/iflytek/viafly/smarthome/base/Command;Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setJdVoiceModel(Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;)V

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    .line 828
    .end local v14    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v18    # "deviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :cond_e
    :goto_3
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 829
    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 830
    const-wide/16 v38, 0x258

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v11, v1, v2}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 832
    :cond_f
    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getSpeechText()Ljava/lang/String;

    move-result-object v32

    .line 833
    .local v32, "speakText":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 834
    invoke-static/range {v33 .. v33}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 836
    :cond_10
    const/4 v4, 0x0

    const-wide/16 v38, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    goto/16 :goto_0

    .line 580
    .end local v32    # "speakText":Ljava/lang/String;
    :cond_11
    const-string/jumbo v4, "light"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 581
    new-instance v30, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    const-string/jumbo v4, "light"

    invoke-static {}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->genCmdId()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v4, v1, v8, v2}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 583
    .local v30, "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 584
    .local v28, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v14, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v14}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>()V

    .line 586
    .restart local v14    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    const-string/jumbo v4, "openequipment"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 587
    const-string/jumbo v4, "openequipment"

    invoke-virtual {v14, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 588
    const-string/jumbo v4, "color"

    const-string/jumbo v37, "\u7ea2"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 590
    const-string/jumbo v4, "index"

    const-string/jumbo v37, "1"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :goto_4
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/smarthome/base/Command;->setParams(Ljava/util/Map;)V

    .line 628
    :cond_12
    :goto_5
    new-instance v15, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 629
    .local v15, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    const/4 v4, 0x0

    invoke-interface {v15, v4, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 630
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setCommands(Ljava/util/List;)V

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto/16 :goto_3

    .line 592
    .end local v15    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    :cond_13
    const-string/jumbo v4, "index"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 595
    :cond_14
    const-string/jumbo v4, "openallequipment"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 596
    const-string/jumbo v4, "openequipment"

    invoke-virtual {v14, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 597
    const-string/jumbo v4, "color"

    const-string/jumbo v37, "\u7ea2"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string/jumbo v4, "index"

    const-string/jumbo v37, "all"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/smarthome/base/Command;->setParams(Ljava/util/Map;)V

    goto :goto_5

    .line 600
    :cond_15
    const-string/jumbo v4, "setlightparameters"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 601
    const-string/jumbo v4, "setparameters"

    invoke-virtual {v14, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 602
    const-string/jumbo v4, "color"

    const-string/jumbo v37, "\u767d"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string/jumbo v4, "index"

    const-string/jumbo v37, "all"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/smarthome/base/Command;->setParams(Ljava/util/Map;)V

    .line 605
    const-string/jumbo v33, "\u5df2\u7ecf\u4e3a\u60a8\u5c06\u706f\u5149\u8c03\u6210\u767d\u8272\u3002"

    .line 606
    invoke-static/range {v33 .. v33}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setSpeechText(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 607
    :cond_16
    const-string/jumbo v4, "setparameters"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 608
    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getBrightness()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 609
    const-string/jumbo v4, "brightness"

    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getBrightness()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_17
    :goto_6
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 614
    const-string/jumbo v4, "index"

    const-string/jumbo v37, "all"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :goto_7
    const-string/jumbo v4, "setparameters"

    invoke-virtual {v14, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 619
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/smarthome/base/Command;->setParams(Ljava/util/Map;)V

    goto/16 :goto_5

    .line 610
    :cond_18
    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 611
    const-string/jumbo v4, "color"

    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getColor()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 616
    :cond_19
    const-string/jumbo v4, "index"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 620
    :cond_1a
    const-string/jumbo v4, "closeequipment"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 621
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 622
    const-string/jumbo v4, "index"

    const-string/jumbo v37, "all"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :goto_8
    const-string/jumbo v4, "closeequipment"

    invoke-virtual {v14, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 624
    :cond_1b
    const-string/jumbo v4, "index"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 634
    .end local v14    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v28    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v30    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :cond_1c
    const-string/jumbo v4, "tv"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 635
    const-string/jumbo v4, "closeequipment"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string/jumbo v4, "openequipment"

    .line 636
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 637
    :cond_1d
    const-string/jumbo v4, "\u7535\u89c6\u8bbe\u5907\u4e0d\u652f\u6301\u8be5\u6307\u4ee4"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayView(Lcom/iflytek/yd/speech/FilterResult;Ljava/lang/String;)V

    .line 638
    const-string/jumbo v4, "\u7535\u89c6\u8bbe\u5907\u4e0d\u652f\u6301\u8be5\u6307\u4ee4"

    invoke-static {v4}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v37, 0x0

    const-wide/16 v38, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    goto/16 :goto_0

    .line 642
    :cond_1e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 643
    invoke-static {v8}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->judgeVarietySpeech(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 644
    invoke-static {v8}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->getVarietyResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 645
    const-string/jumbo v33, "\u5df2\u7ecf\u4e3a\u60a8\u64ad\u653e\u4e0a\u5468\u7684\u975e\u8bda\u52ff\u6270\u3002"

    .line 646
    invoke-static/range {v33 .. v33}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setSpeechText(Ljava/lang/String;)V

    .line 654
    :cond_1f
    :goto_9
    invoke-static {v8}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->judgeCoffee(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 659
    new-instance v14, Lcom/iflytek/viafly/smarthome/base/Command;

    const-string/jumbo v4, "openequipment"

    invoke-direct {v14, v4}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>(Ljava/lang/String;)V

    .line 660
    .restart local v14    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, ""

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 661
    .local v12, "cmdId":Ljava/lang/String;
    move-object/from16 v29, v8

    .line 662
    .local v29, "rawcommand":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 663
    .restart local v15    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    const/4 v4, 0x0

    invoke-interface {v15, v4, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 664
    new-instance v30, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v7, v12, v1, v15}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 665
    .restart local v30    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    .line 666
    const-string/jumbo v33, "\u597d\u7684\uff0c\u7535\u89c6\u6b63\u5728\u64ad\u653e\u592e\u89c6\u65b0\u95fb\u9891\u9053\uff0c\u5496\u5561\u673a\u6b63\u5728\u4e3a\u60a8\u716e\u5496\u5561\u3002"

    .line 667
    invoke-static/range {v33 .. v33}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setSpeechText(Ljava/lang/String;)V

    .line 669
    .end local v12    # "cmdId":Ljava/lang/String;
    .end local v14    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v15    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    .end local v29    # "rawcommand":Ljava/lang/String;
    .end local v30    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :cond_20
    const-string/jumbo v4, "\u6253\u5f00\u7535\u89c6App"

    invoke-virtual {v11, v7, v4}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    new-instance v34, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-static {}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->genCmdId()Ljava/lang/String;

    move-result-object v4

    const/16 v37, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-direct {v0, v7, v4, v8, v1}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 671
    .local v34, "voiceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v4

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto/16 :goto_3

    .line 647
    .end local v34    # "voiceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :cond_21
    invoke-static {v8}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->judgeMovieSpeech(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 648
    invoke-static {v8}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->getMovieResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 649
    const-string/jumbo v33, "\u5df2\u7ecf\u4e3a\u60a8\u64ad\u653e\u6c64\u552f\u548c\u5434\u79c0\u6ce2\u6f14\u7684\u7535\u5f71\u3002"

    .line 650
    invoke-static/range {v33 .. v33}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setSpeechText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 651
    :cond_22
    invoke-static {v8}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->judgeForward(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 652
    invoke-static {v8}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->getFastResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_9

    .line 673
    :cond_23
    const-string/jumbo v4, "SmartHomeBusinessHandler"

    const-string/jumbo v37, "result rawText is empty"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 677
    :cond_24
    const-string/jumbo v4, "voicebox"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 678
    const-string/jumbo v4, "openequipment"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 679
    const-string/jumbo v33, "\u97f3\u7bb1\u8bbe\u5907\u4e0d\u652f\u6301\u8be5\u6307\u4ee4"

    .line 680
    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 681
    const-wide/16 v38, 0x258

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v11, v1, v2}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 682
    const/4 v4, 0x0

    const-wide/16 v38, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    goto/16 :goto_0

    .line 684
    :cond_25
    const-string/jumbo v4, "closeequipment"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 685
    const-string/jumbo v33, "\u97f3\u7bb1\u8bbe\u5907\u4e0d\u652f\u6301\u8be5\u6307\u4ee4"

    .line 686
    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 687
    const-wide/16 v38, 0x258

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v11, v1, v2}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 688
    const/4 v4, 0x0

    const-wide/16 v38, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    goto/16 :goto_0

    .line 696
    :cond_26
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 700
    new-instance v30, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    sget-object v4, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_VOICE_BOX:Ljava/lang/String;

    .line 702
    invoke-static {}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->genCmdId()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v4, v1, v8, v2}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 704
    .restart local v30    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto/16 :goto_3

    .line 708
    .end local v30    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :cond_27
    const-string/jumbo v4, "SmartHomeBusinessHandler"

    const-string/jumbo v37, "result rawText is empty"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 714
    :cond_28
    const-string/jumbo v4, "washer"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string/jumbo v4, "aircondition"

    .line 715
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string/jumbo v4, "waterheater"

    .line 716
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string/jumbo v4, "fridge"

    .line 717
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 718
    :cond_29
    new-instance v22, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-direct/range {v22 .. v22}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>()V

    .line 719
    .local v22, "haierDeviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 720
    .restart local v28    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v14, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v14}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>()V

    .line 721
    .restart local v14    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setEquipment(Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->genCmdId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setCmdId(Ljava/lang/String;)V

    .line 723
    const-string/jumbo v4, "openequipment"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 724
    const-string/jumbo v4, "openequipment"

    invoke-virtual {v14, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 725
    const-string/jumbo v4, "temperature"

    const-string/jumbo v37, "26"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string/jumbo v4, "mode"

    const-string/jumbo v37, "\u667a\u80fd"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/smarthome/base/Command;->setParams(Ljava/util/Map;)V

    .line 768
    :cond_2a
    :goto_a
    invoke-virtual {v5}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v4

    sget-object v37, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_AIR_CONDITIONER:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string/jumbo v4, "aircondition"

    .line 769
    invoke-static {v7, v4}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 770
    invoke-virtual {v5}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setEquipment(Ljava/lang/String;)V

    .line 772
    :cond_2b
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->addCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto/16 :goto_3

    .line 728
    :cond_2c
    const-string/jumbo v4, "closeequipment"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 729
    const-string/jumbo v4, "closeequipment"

    invoke-virtual {v14, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    goto :goto_a

    .line 730
    :cond_2d
    const-string/jumbo v4, "setparameters"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 731
    const-string/jumbo v4, "setparameters"

    invoke-virtual {v14, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 733
    const-string/jumbo v4, "mode"

    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getMode()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_2e
    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getTemperature()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 736
    const-string/jumbo v4, "temperature"

    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getTemperature()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    :cond_2f
    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getWindSpeed()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 739
    const-string/jumbo v4, "windspeed"

    invoke-virtual {v9}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->getWindSpeed()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    :cond_30
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/smarthome/base/Command;->setParams(Ljava/util/Map;)V

    goto/16 :goto_a

    .line 742
    :cond_31
    const-string/jumbo v4, "hotoperate"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 743
    const-string/jumbo v4, "setparameters"

    invoke-virtual {v14, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 744
    const-string/jumbo v4, "temperature"

    const-string/jumbo v37, "24"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string/jumbo v4, "mode"

    const-string/jumbo v37, "\u667a\u80fd"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/smarthome/base/Command;->setParams(Ljava/util/Map;)V

    goto/16 :goto_a

    .line 747
    :cond_32
    const-string/jumbo v4, "backhome"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 748
    const-string/jumbo v33, "\u597d\u7684\uff0c\u6309\u7167\u60a8\u7684\u4e60\u60ef\uff0c\u7a7a\u8c03\u5df2\u7ecf\u8c03\u523026\u5ea6\uff0c\u70ed\u6c34\u5668\u8c03\u523050\u5ea6\u3002"

    .line 749
    invoke-static/range {v33 .. v33}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setSpeechText(Ljava/lang/String;)V

    .line 751
    const-string/jumbo v4, "setparameters"

    invoke-virtual {v14, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 752
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 753
    .local v10, "airParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "temperature"

    const-string/jumbo v37, "26"

    move-object/from16 v0, v37

    invoke-virtual {v10, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-virtual {v14, v10}, Lcom/iflytek/viafly/smarthome/base/Command;->setParams(Ljava/util/Map;)V

    .line 756
    new-instance v23, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-direct/range {v23 .. v23}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>()V

    .line 757
    .local v23, "haierWaterRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    const-string/jumbo v4, "waterheater"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setEquipment(Ljava/lang/String;)V

    .line 758
    new-instance v35, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct/range {v35 .. v35}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>()V

    .line 759
    .local v35, "waterCommand":Lcom/iflytek/viafly/smarthome/base/Command;
    const-string/jumbo v4, "setparameters"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 760
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 761
    .local v36, "waterParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "temperature"

    const-string/jumbo v37, "50"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    invoke-virtual/range {v35 .. v36}, Lcom/iflytek/viafly/smarthome/base/Command;->setParams(Ljava/util/Map;)V

    .line 763
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->addCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto/16 :goto_a

    .line 777
    .end local v10    # "airParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v22    # "haierDeviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .end local v23    # "haierWaterRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .end local v28    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v35    # "waterCommand":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v36    # "waterParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_33
    const-string/jumbo v4, "curtain"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 779
    new-instance v18, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-static {}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->genCmdId()Ljava/lang/String;

    move-result-object v4

    const/16 v37, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-direct {v0, v7, v4, v8, v1}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 780
    .restart local v18    # "deviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    new-instance v14, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v14, v6}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>(Ljava/lang/String;)V

    .line 781
    .restart local v14    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    invoke-static {v8}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessUtil;->judgeCoffee(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 783
    new-instance v31, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    invoke-static {}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->genCmdId()Ljava/lang/String;

    move-result-object v4

    const/16 v37, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-direct {v0, v7, v4, v8, v1}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 784
    .local v31, "sp2Request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    new-instance v13, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v13}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>()V

    .line 785
    .local v13, "coffeeCommand":Lcom/iflytek/viafly/smarthome/base/Command;
    const-string/jumbo v4, "openequipment"

    invoke-virtual {v13, v4}, Lcom/iflytek/viafly/smarthome/base/Command;->setCmd(Ljava/lang/String;)V

    .line 786
    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->addCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v4

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    .line 788
    const-string/jumbo v33, "\u597d\u7684\uff0c\u5df2\u7ecf\u4e3a\u60a8\u62c9\u5f00\u7a97\u5e18\uff0c\u5496\u5561\u673a\u6b63\u5728\u4e3a\u60a8\u716e\u5496\u5561\u3002"

    .line 789
    invoke-static/range {v33 .. v33}, Lpz;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;->setSpeechText(Ljava/lang/String;)V

    .line 791
    .end local v13    # "coffeeCommand":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v31    # "sp2Request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :cond_34
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->addCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto/16 :goto_3

    .line 796
    .end local v14    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v18    # "deviceRequest":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :cond_35
    const-string/jumbo v4, "coffeemaker"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    const-string/jumbo v4, "humidifier"

    .line 797
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 799
    :cond_36
    new-instance v14, Lcom/iflytek/viafly/smarthome/base/Command;

    invoke-direct {v14, v6}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>(Ljava/lang/String;)V

    .line 800
    .restart local v14    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, ""

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 801
    .restart local v12    # "cmdId":Ljava/lang/String;
    move-object/from16 v29, v8

    .line 802
    .restart local v29    # "rawcommand":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 803
    .restart local v15    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    const/4 v4, 0x0

    invoke-interface {v15, v4, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 804
    new-instance v30, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v7, v12, v1, v15}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 805
    .restart local v30    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    invoke-virtual {v5}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v4

    sget-object v37, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_HUMIDIFIER:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 806
    invoke-virtual {v5}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getTypeName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->setEquipment(Ljava/lang/String;)V

    .line 808
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    goto/16 :goto_3

    .line 811
    .end local v12    # "cmdId":Ljava/lang/String;
    .end local v14    # "command":Lcom/iflytek/viafly/smarthome/base/Command;
    .end local v15    # "commands":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/Command;>;"
    .end local v29    # "rawcommand":Ljava/lang/String;
    .end local v30    # "request":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    :cond_38
    const-string/jumbo v4, "electricfan"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    move-object/from16 v4, p0

    .line 812
    invoke-direct/range {v4 .. v9}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->handleMideaFan(Lcom/iflytek/viafly/smarthome/base/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;)V

    goto/16 :goto_3

    .line 815
    :cond_39
    const-string/jumbo v4, "airdryer"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    move-object/from16 v4, p0

    .line 816
    invoke-direct/range {v4 .. v9}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->handleAirDryer(Lcom/iflytek/viafly/smarthome/base/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;)V

    goto/16 :goto_3

    .line 819
    :cond_3a
    const-string/jumbo v4, "airpurifier"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    move-object/from16 v4, p0

    .line 820
    invoke-direct/range {v4 .. v9}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->handleAirPurifier(Lcom/iflytek/viafly/smarthome/base/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;)V

    goto/16 :goto_3

    .line 823
    :cond_3b
    const-string/jumbo v4, "mideahumidifier"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v4, p0

    .line 824
    invoke-direct/range {v4 .. v9}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->handleMideaHumidifier(Lcom/iflytek/viafly/smarthome/base/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/business/SmartSpeechResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method protected varargs onSystemEventCallback(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "systemEvent"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 200
    return-void
.end method

.method public onTtsPlayBegin()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onTtsPlayComplete(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 115
    return-void
.end method

.method public onTtsPlayInterrupt()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onTtsPlayPause()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onTtsPlayProgress(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 125
    return-void
.end method

.method public onTtsPlayResume()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected varargs onUIEventCallback(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "businessEvent"    # Lcom/iflytek/framework/business/entities/UIEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 178
    const-string/jumbo v1, "SmartHomeBusinessHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUIEventCallback | businessEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->cancel_smarthome_scan_view:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne p1, v1, :cond_0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->mSmartHomeView:Lcom/iflytek/framework/browser/localControlView/OperationView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    const-string/jumbo v2, "refreshSmartHomeDevicesView()"

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    const/4 v1, 0x1

    .line 194
    :goto_1
    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SmartHomeBusinessHandler"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->activity_resume:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v1, p1, :cond_1

    .line 188
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;->mSmartHomeView:Lcom/iflytek/framework/browser/localControlView/OperationView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    const-string/jumbo v2, "window.onActivityResume()"

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :cond_1
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 189
    :catch_1
    move-exception v0

    .line 190
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SmartHomeBusinessHandler"

    const-string/jumbo v2, "onUIEventCallback onResume "

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
