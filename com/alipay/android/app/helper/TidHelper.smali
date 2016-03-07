.class public Lcom/alipay/android/app/helper/TidHelper;
.super Ljava/lang/Object;
.source "TidHelper.java"

.field private static a:Z

.method static constructor <clinit>()V
    .registers 1
    .prologue
    .line 49
    const/4 v0, 0
    sput-boolean v0, Lcom/alipay/android/app/helper/TidHelper;->a:Z
    .line 47
    return-void
.end method

.method public static a()Lcom/alipay/android/app/helper/Tid;
    .registers 3
    .prologue
    .line 253
    invoke-static { }, Lcom/alipay/android/app/tid/TidStorage;->a()Lcom/alipay/android/app/tid/TidStorage;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/android/app/tid/TidStorage;->i()Z
    move-result v0
    if-eqz v0, :L1
    .line 254
    const/4 v0, 0
    :L0
    .line 261
    return-object v0
    :L1
    .line 257
    new-instance v0, Lcom/alipay/android/app/helper/Tid;
    invoke-direct { v0 }, Lcom/alipay/android/app/helper/Tid;-><init>()V
    .line 258
    invoke-static { }, Lcom/alipay/android/app/tid/TidStorage;->a()Lcom/alipay/android/app/tid/TidStorage;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/android/app/tid/TidStorage;->b()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/alipay/android/app/helper/Tid;->setTid(Ljava/lang/String;)V
    .line 259
    invoke-static { }, Lcom/alipay/android/app/tid/TidStorage;->a()Lcom/alipay/android/app/tid/TidStorage;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/android/app/tid/TidStorage;->c()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/alipay/android/app/helper/Tid;->setTidSeed(Ljava/lang/String;)V
    .line 260
    invoke-static { }, Lcom/alipay/android/app/tid/TidStorage;->a()Lcom/alipay/android/app/tid/TidStorage;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/android/app/tid/TidStorage;->j()Ljava/lang/Long;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Long;->longValue()J
    move-result-wide v1
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/android/app/helper/Tid;->setTimestamp(J)V
    goto :L0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .catchall { :L0 .. :L3 } :L8
    .catchall { :L6 .. :L7 } :L8
    .catch Ljava/lang/Exception; { :L10 .. :L11 } :L12
    .catchall { :L10 .. :L11 } :L8
    .catchall { :L13 .. :L14 } :L8
    .registers 8
    .prologue
    .line 77
    const-class v1, Lcom/alipay/android/app/helper/TidHelper;
    monitor-enter v1
    const/4 v0, 1
    :L0
    const-string/jumbo v2, "phonecashier"
    const-string/jumbo v3, "TidHelper.loadOrCreateTID"
    const-string/jumbo v4, "start"
    invoke-static { v0, v2, v3, v4 }, Lcom/alipay/android/app/util/LogUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .line 80
    invoke-static { p0 }, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V
    .line 81
    const/4 v0, 1
    const-string/jumbo v2, "phonecashier"
    const-string/jumbo v3, "TidHelper.loadTID"
    const-string/jumbo v4, "has been executed"
    invoke-static { v0, v2, v3, v4 }, Lcom/alipay/android/app/util/LogUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static { p0 }, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V
    invoke-static { }, Lcom/alipay/android/app/tid/TidStorage;->a()Lcom/alipay/android/app/tid/TidStorage;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/android/app/helper/TidHelper;->a(Lcom/alipay/android/app/tid/TidStorage;)Lcom/alipay/android/app/helper/Tid;
    move-result-object v0
    if-nez v0, :L5
    const/4 v2, 1
    const-string/jumbo v3, "phonecashier"
    const-string/jumbo v4, "TidHelper.loadTID"
    const-string/jumbo v5, "TidHelper:::loadTID > null"
    invoke-static { v2, v3, v4, v5 }, Lcom/alipay/android/app/util/LogUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :L1
    .line 82
    if-eqz v0, :L2
    invoke-virtual { v0 }, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z
    move-result v2
    if-eqz v2, :L4
    :L2
    .line 83
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v2
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v3
    if-ne v2, v3, :L9
    .line 84
    const/4 v0, 1
    const-string/jumbo v2, "phonecashier"
    const-string/jumbo v3, "TidHelper.loadOrCreateTID"
    const-string/jumbo v4, "in mainLooper"
    invoke-static { v0, v2, v3, v4 }, Lcom/alipay/android/app/util/LogUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :L3
    .line 85
    const/4 v0, 0
    :L4
    .line 93
    monitor-exit v1
    return-object v0
    :L5
    .line 81
    const/4 v2, 1
    :L6
    const-string/jumbo v3, "phonecashier"
    const-string/jumbo v4, "TidHelper.loadTID"
    new-instance v5, Ljava/lang/StringBuilder;
    const-string/jumbo v6, "TidHelper:::loadTID > "
    invoke-direct { v5, v6 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static { v2, v3, v4, v5 }, Lcom/alipay/android/app/util/LogUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :L7
    goto :L1
    :L8
    .line 77
    move-exception v0
    monitor-exit v1
    throw v0
    :L9
    .line 88
    const/4 v2, 1
    :L10
    invoke-static { p0, v2 }, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;Z)Lcom/alipay/android/app/helper/Tid;
    :L11
    move-result-object v0
    goto :L4
    :L12
    .line 89
    move-exception v2
    :L13
    invoke-static { v2 }, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :L14
    goto :L4
.end method

.method private static a(Landroid/content/Context;Z)Lcom/alipay/android/app/helper/Tid;
    .registers 10
    .prologue
    const/4 v6, 1
    const/4 v5, 0
    .line 176
    const-string/jumbo v0, "phonecashier"
    const-string/jumbo v1, "TidHelper.requestTid"
    const-string/jumbo v2, "start"
    invoke-static { v6, v0, v1, v2 }, Lcom/alipay/android/app/util/LogUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .line 177
    new-instance v7, Lcom/alipay/android/app/logic/request/RequestConfig;
    invoke-direct { v7 }, Lcom/alipay/android/app/logic/request/RequestConfig;-><init>()V
    .line 178
    const-string/jumbo v0, "cashier"
    invoke-virtual { v7, v0 }, Lcom/alipay/android/app/logic/request/RequestConfig;->a(Ljava/lang/String;)V
    .line 179
    const-string/jumbo v0, "gentid"
    invoke-virtual { v7, v0 }, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Ljava/lang/String;)V
    .line 181
    invoke-static { }, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;
    move-result-object v0
    invoke-interface { v0 }, Lcom/alipay/android/app/IAppConfig;->d()Ljava/lang/String;
    move-result-object v3
    .line 182
    invoke-static { v7 }, Lcom/alipay/android/app/logic/util/LogicPackUtils;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)[B
    move-result-object v1
    .line 183
    invoke-virtual { v7 }, Lcom/alipay/android/app/logic/request/RequestConfig;->n()Ljava/lang/String;
    move-result-object v2
    .line 184
    invoke-static { v7 }, Lcom/alipay/android/app/logic/util/LogicHeaderUtil;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)Ljava/util/List;
    move-result-object v4
    .line 185
    invoke-static { v3 }, Lcom/alipay/android/app/source/ResponseWrapperFactory;->a(Ljava/lang/String;)Lcom/alipay/android/app/source/IResponseWrapper;
    move-result-object v0
    .line 186
    invoke-interface/range { v0 .. v5 }, Lcom/alipay/android/app/source/IResponseWrapper;->a([BLjava/lang/String;Ljava/lang/String;Ljava/util/List;I)Ljava/lang/Object;
    move-result-object v0
    .line 187
    check-cast v0, [Ljava/lang/Object;
    .line 188
    aget-object v0, v0, v5
    check-cast v0, Ljava/util/Map;
    .line 189
    const-string/jumbo v1, "content"
    invoke-interface { v0, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    .line 190
    const-string/jumbo v2, "msp-gzip"
    invoke-interface { v0, v2 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    .line 191
    invoke-static { v0 }, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    invoke-virtual { v7, v0 }, Lcom/alipay/android/app/logic/request/RequestConfig;->a(Z)V
    .line 193
    invoke-static { v1, v7 }, Lcom/alipay/android/app/logic/util/LogicPackUtils;->a(Ljava/lang/String;Lcom/alipay/android/app/logic/request/RequestConfig;)Ljava/lang/String;
    move-result-object v0
    .line 194
    const/4 v1, 2
    const-string/jumbo v2, "phonecashier"
    const-string/jumbo v3, "TidHelper.requestTid"
    new-instance v4, Ljava/lang/StringBuilder;
    const-string/jumbo v7, "Tid realdata:"
    invoke-direct { v4, v7 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v1, v2, v3, v4 }, Lcom/alipay/android/app/util/LogUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .line 196
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;
    invoke-direct { v1, v0 }, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    .line 197
    const-string/jumbo v0, "data"
    invoke-virtual { v1, v0 }, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;
    move-result-object v0
    .line 198
    const-string/jumbo v1, "params"
    invoke-virtual { v0, v1 }, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;
    move-result-object v1
    .line 199
    if-nez v1, :L2
    move v0, v5
    :L0
    if-eqz v0, :L4
    if-eqz p1, :L4
    .line 201
    invoke-static { p0, v5 }, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;Z)Lcom/alipay/android/app/helper/Tid;
    move-result-object v0
    :L1
    .line 215
    return-object v0
    :L2
    .line 199
    const-string/jumbo v0, "public_key"
    const/4 v2, 0
    invoke-virtual { v1, v0, v2 }, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-nez v2, :L3
    invoke-static { }, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;
    move-result-object v2
    invoke-virtual { v2 }, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;
    move-result-object v2
    invoke-interface { v2, v0 }, Lcom/alipay/android/app/IAppConfig;->a(Ljava/lang/String;)V
    move v0, v6
    goto :L0
    :L3
    move v0, v5
    goto :L0
    :L4
    .line 203
    const-string/jumbo v0, "tid"
    const-string/jumbo v2, ""
    invoke-virtual { v1, v0, v2 }, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    .line 204
    const-string/jumbo v2, "client_key"
    const-string/jumbo v3, ""
    invoke-virtual { v1, v2, v3 }, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    .line 205
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-nez v2, :L5
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v2
    if-nez v2, :L5
    .line 206
    invoke-static { }, Lcom/alipay/android/app/tid/TidStorage;->a()Lcom/alipay/android/app/tid/TidStorage;
    move-result-object v2
    invoke-virtual { v2, v0, v1 }, Lcom/alipay/android/app/tid/TidStorage;->a(Ljava/lang/String;Ljava/lang/String;)V
    :L5
    .line 208
    invoke-static { }, Lcom/alipay/android/app/tid/TidStorage;->a()Lcom/alipay/android/app/tid/TidStorage;
    move-result-object v0
    invoke-static { v0 }, Lcom/alipay/android/app/helper/TidHelper;->a(Lcom/alipay/android/app/tid/TidStorage;)Lcom/alipay/android/app/helper/Tid;
    move-result-object v0
    .line 209
    if-nez v0, :L6
    .line 210
    const-string/jumbo v1, "phonecashier"
    const-string/jumbo v2, "TidHelper.requestTid"
    const-string/jumbo v3, "null"
    invoke-static { v6, v1, v2, v3 }, Lcom/alipay/android/app/util/LogUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    goto :L1
    :L6
    .line 212
    const-string/jumbo v1, "phonecashier"
    const-string/jumbo v2, "TidHelper.requestTid"
    new-instance v3, Ljava/lang/StringBuilder;
    const-string/jumbo v4, "requestTid:"
    invoke-direct { v3, v4 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual { v0 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v6, v1, v2, v3 }, Lcom/alipay/android/app/util/LogUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    goto :L1
.end method

.method private static a(Lcom/alipay/android/app/tid/TidStorage;)Lcom/alipay/android/app/helper/Tid;
    .registers 4
    .prologue
    .line 235
    if-eqz p0, :L0
    invoke-virtual { p0 }, Lcom/alipay/android/app/tid/TidStorage;->f()Z
    move-result v0
    if-eqz v0, :L2
    :L0
    .line 236
    const/4 v0, 0
    :L1
    .line 249
    return-object v0
    :L2
    .line 239
    new-instance v0, Lcom/alipay/android/app/helper/Tid;
    invoke-direct { v0 }, Lcom/alipay/android/app/helper/Tid;-><init>()V
    .line 241
    invoke-virtual { p0 }, Lcom/alipay/android/app/tid/TidStorage;->b()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/alipay/android/app/helper/Tid;->setTid(Ljava/lang/String;)V
    .line 242
    invoke-virtual { p0 }, Lcom/alipay/android/app/tid/TidStorage;->c()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/alipay/android/app/helper/Tid;->setTidSeed(Ljava/lang/String;)V
    .line 243
    invoke-virtual { p0 }, Lcom/alipay/android/app/tid/TidStorage;->j()Ljava/lang/Long;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Long;->longValue()J
    move-result-wide v1
    invoke-virtual { v0, v1, v2 }, Lcom/alipay/android/app/helper/Tid;->setTimestamp(J)V
    goto :L1
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .catchall { :L0 .. :L2 } :L5
    .catchall { :L3 .. :L4 } :L5
    .registers 4
    .prologue
    .line 103
    const-class v1, Lcom/alipay/android/app/helper/TidHelper;
    monitor-enter v1
    :L0
    invoke-static { p0 }, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    move-result-object v0
    .line 104
    if-eqz v0, :L1
    invoke-virtual { v0 }, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z
    move-result v2
    if-eqz v2, :L3
    :L1
    const-string/jumbo v0, ""
    :L2
    monitor-exit v1
    return-object v0
    :L3
    invoke-virtual { v0 }, Lcom/alipay/android/app/helper/Tid;->getTid()Ljava/lang/String;
    :L4
    move-result-object v0
    goto :L2
    :L5
    .line 103
    move-exception v0
    monitor-exit v1
    throw v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 5
    .prologue
    const/4 v0, 1
    .line 111
    const-string/jumbo v1, "phonecashier"
    const-string/jumbo v2, "TidHelper.resetTID"
    const-string/jumbo v3, "resetTID"
    invoke-static { v0, v1, v2, v3 }, Lcom/alipay/android/app/util/LogUtils;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .line 112
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v2
    if-ne v1, v2, :L0
    .line 113
    new-instance v0, Ljava/lang/Exception;
    const-string/jumbo v1, "\u4e0d\u80fd\u5728\u4e3b\u7ebf\u7a0b\u4e2d\u8c03\u7528\u6b64\u65b9\u6cd5"
    invoke-direct { v0, v1 }, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    throw v0
    :L0
    .line 115
    invoke-static { p0 }, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V
    .line 117
    invoke-static { }, Lcom/alipay/android/app/tid/TidStorage;->a()Lcom/alipay/android/app/tid/TidStorage;
    move-result-object v1
    invoke-virtual { v1 }, Lcom/alipay/android/app/tid/TidStorage;->h()V
    .line 119
    invoke-static { p0, v0 }, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;Z)Lcom/alipay/android/app/helper/Tid;
    move-result-object v1
    .line 120
    if-eqz v1, :L1
    invoke-virtual { v1 }, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z
    move-result v1
    if-eqz v1, :L2
    :L1
    .line 121
    const/4 v0, 0
    :L2
    .line 123
    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .prologue
    .line 135
    invoke-static { p0 }, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V
    .line 136
    invoke-static { p0 }, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .prologue
    .line 140
    invoke-static { p0 }, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V
    .line 141
    invoke-static { p0 }, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;
    move-result-object v0
    invoke-virtual { v0 }, Lcom/alipay/android/app/sys/DeviceInfo;->a()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .prologue
    .line 145
    invoke-static { p0 }, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V
    .line 146
    invoke-static { }, Lcom/alipay/android/app/helper/MspConfig;->j()Lcom/alipay/android/app/helper/MspConfig;
    invoke-static { }, Lcom/alipay/android/app/helper/MspConfig;->k()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .prologue
    .line 150
    invoke-static { p0 }, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V
    .line 151
    invoke-static { }, Lcom/alipay/android/app/helper/MspConfig;->j()Lcom/alipay/android/app/helper/MspConfig;
    invoke-static { }, Lcom/alipay/android/app/helper/MspConfig;->l()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; { :L0 .. :L8 } :L9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; { :L10 .. :L12 } :L9
    .registers 8
    .prologue
    const/4 v1, 0
    .line 264
    invoke-static { }, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;
    move-result-object v0
    invoke-static { }, Lcom/alipay/android/app/helper/MspConfig;->j()Lcom/alipay/android/app/helper/MspConfig;
    move-result-object v2
    invoke-virtual { v0, p0, v2 }, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V
    :L0
    .line 266
    invoke-virtual { p0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    .line 267
    const-string/jumbo v2, "com.alipay.android.app"
    .line 268
    const/16 v3, 128
    .line 267
    invoke-virtual { v0, v2, v3 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v0
    .line 269
    if-nez v0, :L2
    move v0, v1
    :L1
    .line 278
    return v0
    :L2
    .line 271
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    .line 272
    const-string/jumbo v2, "3.5.3"
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct { v3 }, Ljava/util/ArrayList;-><init>()V
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct { v4 }, Ljava/util/ArrayList;-><init>()V
    const-string/jumbo v5, "\\."
    invoke-virtual { v0, v5 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v0
    invoke-interface { v3, v0 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    const-string/jumbo v0, "\\."
    invoke-virtual { v2, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v0
    invoke-interface { v4, v0 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    invoke-interface { v3 }, Ljava/util/List;->size()I
    move-result v0
    invoke-interface { v4 }, Ljava/util/List;->size()I
    move-result v2
    invoke-static { v0, v2 }, Ljava/lang/Math;->max(II)I
    move-result v5
    :L3
    invoke-interface { v3 }, Ljava/util/List;->size()I
    move-result v0
    if-lt v0, v5, :L7
    :L4
    invoke-interface { v4 }, Ljava/util/List;->size()I
    move-result v0
    if-lt v0, v5, :L10
    move v2, v1
    :L5
    if-lt v2, v5, :L11
    move v0, v1
    :L6
    if-gez v0, :L14
    move v0, v1
    .line 273
    goto :L1
    :L7
    .line 272
    const-string/jumbo v0, "0"
    invoke-interface { v3, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :L8
    goto :L3
    :L9
    .line 274
    move-exception v0
    .line 275
    invoke-static { }, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    move-result-object v2
    const-string/jumbo v3, "msp"
    invoke-virtual { v0 }, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;
    move-result-object v0
    invoke-interface { v2, v3, v0 }, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    move v0, v1
    .line 276
    goto :L1
    :L10
    .line 272
    const-string/jumbo v0, "0"
    invoke-interface { v4, v0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L4
    :L11
    invoke-interface { v3, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-static { v0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v6
    invoke-interface { v4, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-static { v0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0
    if-eq v6, v0, :L13
    invoke-interface { v3, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-static { v0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    invoke-interface { v4, v2 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-static { v0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :L12
    move-result v0
    sub-int v0, v3, v0
    goto :L6
    :L13
    add-int/lit8 v0, v2, 1
    move v2, v0
    goto :L5
    :L14
    .line 278
    const/4 v0, 1
    goto/16 :L1
.end method

.method private static i(Landroid/content/Context;)V
    .registers 3
    .prologue
    .line 155
    sget-boolean v0, Lcom/alipay/android/app/helper/TidHelper;->a:Z
    if-eqz v0, :L1
    :L0
    .line 161
    return-void
    :L1
    .line 158
    const/4 v0, 1
    sput-boolean v0, Lcom/alipay/android/app/helper/TidHelper;->a:Z
    .line 159
    invoke-static { }, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;
    move-result-object v0
    invoke-static { }, Lcom/alipay/android/app/helper/MspConfig;->j()Lcom/alipay/android/app/helper/MspConfig;
    move-result-object v1
    invoke-virtual { v0, p0, v1 }, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V
    .line 160
    invoke-static { p0 }, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/content/Context;)V
    goto :L0
.end method
