import robot.api.logger
import robot.utils.asserts

# Variable that is supposed to be in the fridge firmware
_temperature_setpoint = 5


def _ble_send_setpoint(value):
    """Pretend to send data to the fridge with the new temperature setpoint.

    :param value: the setpoint value
    """
    global _temperature_setpoint
    _temperature_setpoint = value
    print('Sending setpoint to the fridge: ', _temperature_setpoint)


def _ble_read_setpoint():
    """Pretend to read data to the fridge to get the temperature setpoint.

    :return: the setpoint value
    """
    global _temperature_setpoint
    print('Reading setpoint to the fridge: ', _temperature_setpoint)
    return _temperature_setpoint


def change_temperature_setpoint(value):
    """Function exposed as a keyword to change the temperature setpoint.

    :param value: the setpoint value
    """
    value = float(value)
    robot.api.logger.info('Change temperature setpoint to %f' % value)
    _ble_send_setpoint(value)


def check_temperature_setpoint(expected):
    """Function exposed as a keyword to check the temperature setpoint.

    :param expected: the expected setpoint value
    """
    expected = float(expected)
    actual = _ble_read_setpoint()
    robot.utils.asserts.assert_equal(expected, actual)
