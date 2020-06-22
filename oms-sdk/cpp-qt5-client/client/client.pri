QT += network

HEADERS += \
# Models
    $${PWD}/OAIBalance.h \
    $${PWD}/OAIBalance_data.h \
    $${PWD}/OAICancelAllOrder.h \
    $${PWD}/OAICancelOrder.h \
    $${PWD}/OAICreateOrder400.h \
    $${PWD}/OAIMessages.h \
    $${PWD}/OAIMessagesInfo.h \
    $${PWD}/OAIMessagesOk.h \
    $${PWD}/OAINewOrder.h \
    $${PWD}/OAIOrder.h \
    $${PWD}/OAIOrderLive.h \
    $${PWD}/OAIOrderStatus.h \
    $${PWD}/OAIOrder_data.h \
    $${PWD}/OAIPosition.h \
    $${PWD}/OAIPosition_data.h \
    $${PWD}/OAITimeInForce.h \
# APIs
    $${PWD}/OAIBalancesApi.h \
    $${PWD}/OAIOrdersApi.h \
    $${PWD}/OAIPositionsApi.h \
# Others
    $${PWD}/OAIHelpers.h \
    $${PWD}/OAIHttpRequest.h \
    $${PWD}/OAIObject.h \
    $${PWD}/OAIEnum.h \
    $${PWD}/OAIHttpFileElement.h

SOURCES += \
# Models
    $${PWD}/OAIBalance.cpp \
    $${PWD}/OAIBalance_data.cpp \
    $${PWD}/OAICancelAllOrder.cpp \
    $${PWD}/OAICancelOrder.cpp \
    $${PWD}/OAICreateOrder400.cpp \
    $${PWD}/OAIMessages.cpp \
    $${PWD}/OAIMessagesInfo.cpp \
    $${PWD}/OAIMessagesOk.cpp \
    $${PWD}/OAINewOrder.cpp \
    $${PWD}/OAIOrder.cpp \
    $${PWD}/OAIOrderLive.cpp \
    $${PWD}/OAIOrderStatus.cpp \
    $${PWD}/OAIOrder_data.cpp \
    $${PWD}/OAIPosition.cpp \
    $${PWD}/OAIPosition_data.cpp \
    $${PWD}/OAITimeInForce.cpp \
# APIs
    $${PWD}/OAIBalancesApi.cpp \
    $${PWD}/OAIOrdersApi.cpp \
    $${PWD}/OAIPositionsApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp

